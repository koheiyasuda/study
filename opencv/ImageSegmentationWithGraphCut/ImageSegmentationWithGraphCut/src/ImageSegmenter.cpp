//
//  ImageSegmenter.cpp
//  ImageSegmentation
//
//  Created by kumada on 2013/03/16.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#include "ImageSegmenter.h"
#include "Parameters.h"
#include "GaussianMixture.h"
#include "Log.h"
#include <boost/range/iterator_range.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <boost/range/numeric.hpp>
#include "GCoptimization.h"
#include "Inquirer.h"
#include <boost/range/algorithm/max_element.hpp>

namespace
{
        constexpr int DataTermWeight = 100;
}

ImageSegmenter::ImageSegmenter(const Parameters& params)
        : parameters_(params)
        , smoothing_term_weight_(DataTermWeight * params.ratio_)
{
        
}

void ImageSegmenter::set_src_image(const cv::Mat* src_image)
{
        src_image_ = src_image;
}

namespace
{
        constexpr double GaussianKernelStandardDeviation {0.75};
        const cv::Size   BlurSize                        {11, 11};
        constexpr int    SobelKernelSize                 {3};
        
        void calculate_edge(const cv::Mat& src, int ratio, cv::Mat& dst, int xorder, int yorder)
        {
                cv::Mat tmp0;
                cv::Sobel(src, tmp0, -1/* the same depth as the source */, xorder, yorder, SobelKernelSize);
                assert(tmp0.cols == src.cols && tmp0.rows == src.rows && tmp0.type() == CV_64FC1);
                
                cv::Mat tmp1 = cv::abs(tmp0);
                double max_val;
                double min_val;
                cv::minMaxLoc(tmp1, &min_val, &max_val);
                cv::Mat tmp2;
                tmp1.convertTo(tmp2, -1, -1 / max_val, 1);
                tmp2 *= ratio;
                tmp2.convertTo(dst, CV_32SC1);
        }
}

void ImageSegmenter::calculate_edges()
{
        cv::Mat gray;
        cv::cvtColor(*src_image_, gray, CV_BGR2GRAY);
        cv::Mat gray64f;
        gray.convertTo(gray64f, CV_64FC1, 1.0 / 255.0);
        cv::GaussianBlur(gray64f, gray64f, BlurSize, GaussianKernelStandardDeviation);

        calculate_edge(gray64f, smoothing_term_weight_, dx_image_, 1, 0);
        calculate_edge(gray64f, smoothing_term_weight_, dy_image_, 0, 1);
 }

namespace
{
        bool check_model(const std::string& name, const cv::EM& model, const Parameters& params)
        {
                Log::print("\tmeans for ", name);
                const cv::Mat& means = model.get<cv::Mat>("means");
                assert(means.rows == params.num_gaussians_);
                assert(means.cols == ImageSegmenter::Dimension_);
                assert(means.type() == CV_64FC1);
                for ( int i = 0; i < params.num_gaussians_; ++i ) {
                        const double* ptr = means.ptr<double>(0);
                        Log::print("\t(", ptr[0], ", ", ptr[1], ", ", ptr[2], ")");
                }
                return true;
        }
        
        bool check_training_data(const std::vector<cv::Mat>& data)
        {
                for ( const auto& d : data ) {
                        assert(d.type() == CV_64FC1);
                        assert(d.cols == ImageSegmenter::Dimension_);
                }
                return true;
        }
        
        
}

void ImageSegmenter::execute_graphcut()
{
        const int rows = src_image_->rows;
        const int cols = src_image_->cols;
        const int model_size = static_cast<int>(models_.size());
        
        GCoptimizationGridGraph graph(cols, rows, model_size);
        
        // set data terms
        const int n = rows * cols;
        for ( int j = 0; j < n; ++j ) {
                const double* ptr = probabilities_.ptr<double>(j);
                for ( int i = 0; i < model_size; ++i ) {
                        const int icost = static_cast<int>(DataTermWeight * ptr[i]);
                        graph.setDataCost(j, i, icost);
                }
        }
        
        // set smoothing terms
        const cv::Mat sc = cv::Mat::ones(model_size, model_size, CV_32SC1) -
                           cv::Mat::eye(model_size, model_size, CV_32SC1);
        graph.setSmoothCostVH(
                reinterpret_cast<int*>(sc.data),
                reinterpret_cast<int*>(dx_image_.data),
                reinterpret_cast<int*>(dy_image_.data)
        );

        // run alpha-beta swap algorithm
        //graph.swap();
        
        // run expansion algorithm
        graph.expansion();

        graphcut_labels_.create(n, 1, CV_8UC1);
        for ( int i  = 0; i < n; ++i ) {
                graphcut_labels_.data[i] = graph.whatLabel(i);
        }
}

// test ok
void ImageSegmenter::train(const std::vector<cv::Mat>& training_data)
{
        assert(check_training_data(training_data));
        models_.clear();
        gaussian_mixtures_.clear();
        
        const std::size_t data_size = training_data.size();
        
        models_.reserve(data_size);
        gaussian_mixtures_.reserve(data_size);
        
        for ( std::size_t i = 0; i < data_size; ++i ) {
                const cv::Mat& data = training_data[i];
                cv::EM model {parameters_.num_gaussians_};
                model.train(data);
                //assert(check_model(std::to_string(i) + "-label", model, parameters_));
                models_.push_back(std::move(model));
                gaussian_mixtures_.push_back(std::make_shared<GaussianMixture>(models_.back()));
        }
}

namespace
{
        const double calculate_probability(
                const cv::Mat&                         x_n,
                const std::shared_ptr<GaussianMixture> gmm
        ) {
                cv::Mat probs;
                gmm->calculate_probability(x_n, probs);
                assert(probs.type() == CV_64FC1);
                const int nclusters = gmm->get_nclusters();
                assert(probs.rows == 1 && probs.cols == nclusters);
                double prob = 0.0;
                for( int k = 0; k < nclusters; ++k ) {
                        const double* ptr = reinterpret_cast<const double*>(probs.data);
                        prob += ptr[k];
                }
                return prob;
        }
        
        constexpr double MinimumValue = -std::numeric_limits<double>::max();
        
        bool save_probabilities(const cv::Mat& probabilities, int row)
        {
                const int rows = probabilities.rows;
                cv::Mat tmp = probabilities.reshape(probabilities.cols, row);
                //assert(tmp.type() == CV_64FC3);
                //std::cout << tmp.cols << " " << tmp.rows << std::endl;
                assert(tmp.cols == rows / row);
                assert(tmp.rows == row);
                std::vector<cv::Mat> mats;
                cv::split(tmp, mats);
                for ( std::size_t i = 0; i < mats.size(); ++i ) {
                        Inquirer::inquire(mats[i], std::to_string(i) + "_probs");
                }
                return true;
        }
}

void ImageSegmenter::predict(const cv::Mat& image)
{
        assert(image.type() == CV_8UC3);
        max_labels_.create(image.size(), CV_8UC1);
        probabilities_.create(image.rows * image.cols, static_cast<int>(models_.size()), CV_64FC1);
        
        const int w = image.cols;
        const int h = image.rows;
        for ( int j = 0, jw = j * w; j < h; ++j, jw += w ) {
                const std::uint8_t* src = image.ptr<std::uint8_t>(j);
                std::uint8_t* dst = max_labels_.ptr<std::uint8_t>(j);
                for ( int i = 0, i3 = i * Dimension_; i < w; ++i, i3 += Dimension_ ) {
                        // a point x_n
                        double data[] = {
                                src[0 + i3] / 255.0, // b
                                src[1 + i3] / 255.0, // g
                                src[2 + i3] / 255.0, // r
                        };
                        cv::Mat x_n(1, ImageSegmenter::Dimension_, CV_64FC1, data);
                        int n = jw + i;
                        
                        double p = MinimumValue;
                        std::size_t max_label = 0;
                        for ( std::size_t i = 0, mixtures_size = gaussian_mixtures_.size(); i < mixtures_size; ++i ) {
                                double probability = calculate_probability(x_n, gaussian_mixtures_[i]);
                                probabilities_.at<double>(n, static_cast<int>(i)) = probability;
                                if ( p < probability ) {
                                        p = probability;
                                        max_label = i;
                                }
                        }
                        dst[i] = max_label;
                }
        }
        
}

namespace
{
        template<typename Range>
        inline void invert(const Range& range)
        {
                double max_value = *boost::max_element(range);
                boost::for_each(range, [&](double& v){
                        v /= max_value;
                        v = 1 - v;
                });
        }
}

// test ok
void ImageSegmenter::modify_probabilities()
{
        assert(probabilities_.rows == src_image_->rows * src_image_->cols);
        assert(probabilities_.cols == models_.size());
        assert(probabilities_.type() == CV_64FC1);
        for ( int i = 0, n = probabilities_.rows; i < n; ++i ) {
                cv::Mat row = probabilities_.row(i);
                const auto range = boost::make_iterator_range(row.begin<double>(), row.end<double>());
                invert(range);
        }
        assert(save_probabilities(probabilities_, src_image_->rows));
}

void ImageSegmenter::create_max_labeled_images()
{
        max_labeled_images_.clear();
        const std::size_t n = models_.size();
        max_labeled_images_.resize(n);
        for ( std::size_t i = 0; i < n; ++i ) {
                create_masked_image(max_labels_, static_cast<int>(i), max_labeled_images_[i]);
        }
}

void ImageSegmenter::create_graphcut_labeled_images()
{
        graphcut_labeled_images_.clear();
        const std::size_t n = models_.size();
        graphcut_labeled_images_.resize(n);
        for ( std::size_t i = 0; i < n; ++i ) {
                create_masked_image(graphcut_labels_, static_cast<int>(i), graphcut_labeled_images_[i]);
        }
}

// test ok
void ImageSegmenter::create_masked_image(const cv::Mat& labels, int index, cv::Mat& image) const
{
        assert(labels.type() == CV_8UC1);
        cv::Mat mask = (labels == index);
        image = cv::Scalar(0); // clear
        src_image_->copyTo(image, mask);
}



#if(UNIT_TEST)
#define BOOST_TEST_DYN_LINK

#include <boost/test/unit_test.hpp>
#include <random>

namespace
{
        std::default_random_engine e {};
        std::uniform_int_distribution<double> d {0, 1};
}

class ImageSegmenterTester
{
public:
        static void test_train()
        {
                Parameters params {};
                params.num_gaussians_ = 5;
                ImageSegmenter segmenter {params};
                const int num = 3;
                std::vector<cv::Mat> training_data(num);
                
                for ( auto& m : training_data ) {
                        create_data(m);
                }
                
                segmenter.train(training_data);
                const auto& models = segmenter.models_;
                BOOST_CHECK(models.size() == num);
                for ( const auto& model : models ) {
                        BOOST_CHECK(model.get<int>("nclusters") == params.num_gaussians_);
                }
                
                const auto& mixtures = segmenter.gaussian_mixtures_;
                BOOST_CHECK(mixtures.size() == num);
                for ( const auto& mixture : mixtures ) {
                        BOOST_CHECK(mixture->get_nclusters() == params.num_gaussians_);
                }
                
        }
        
        static void test_row()
        {
                double data[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
                cv::Mat tmp {3, 3, CV_64FC1, data};
                cv::Mat row = tmp.row(0);
                row.at<double>(0, 0) = 100;
                BOOST_CHECK(tmp.at<double>(0, 0) == 100);
                auto range = boost::make_iterator_range(row.begin<double>(), row.end<double>());
                double t = boost::accumulate(range, 0.0);
                BOOST_CHECK(t == 105);
                
                cv::Mat row1 = tmp.row(1);
                range = boost::make_iterator_range(row1.begin<double>(), row1.end<double>());
                t = boost::accumulate(range, 0.0, [](double a, double b){ return a += (b * b); });
                BOOST_CHECK(77 == t);
        }
        
        static void test_modify_probabilities()
        {
                Parameters params {};
                ImageSegmenter segmenter {params};
                cv::Mat& probs = segmenter.probabilities_;
                int rows = 2;
                int cols = 3;
                
                double data[] = {
                        1, 2, 3,
                        4, 5, 6,
                };
                probs.create(rows, cols, CV_64FC1);
                probs.data = reinterpret_cast<std::uint8_t*>(data);
                
                cv::Mat src(2, 1, CV_8UC3); // dummy
                segmenter.set_src_image(&src); // dummy
                segmenter.models_.resize(cols); // dummy
                
                const double Epsilon = 1.0e-08;
                segmenter.modify_probabilities();
                double answers[] = {
                        1 - 1/3.0, 1 - 2/3.0, 0.0,
                        1 - 4/6.0, 1 - 5/6.0, 0.0,
                };
                for ( int i = 0, k = 0; i < probs.rows; ++i, k += 3 ) {
                        cv::Mat row = probs.row(i);
                        BOOST_CHECK_CLOSE(answers[k + 0], row.at<double>(0, 0), Epsilon);
                        BOOST_CHECK_CLOSE(answers[k + 1], row.at<double>(0, 1), Epsilon);
                        BOOST_CHECK_CLOSE(answers[k + 2], row.at<double>(0, 2), Epsilon);
                }
        }
        
        static void test_create_masked_image()
        {
                Parameters params {};
                ImageSegmenter segmenter {params};
                
                cv::Mat src_image(2, 2, CV_8UC3);
                src_image.at<cv::Vec3b>(0, 0) = {255, 255, 255};
                src_image.at<cv::Vec3b>(0, 1) = {255, 255, 255};
                src_image.at<cv::Vec3b>(1, 0) = {255, 255, 255};
                src_image.at<cv::Vec3b>(1, 1) = {255, 255, 255};
                segmenter.set_src_image(&src_image);
                
                int data[] = {1, 2, 3, 4};
                cv::Mat labels(2, 2, CV_8UC1, data);

                cv::Mat dst_image;
                segmenter.create_masked_image(labels, 1, dst_image);
                
                BOOST_CHECK(dst_image.at<cv::Vec3b>(0, 0) == cv::Vec3b(255, 255, 255));
                BOOST_CHECK(dst_image.at<cv::Vec3b>(0, 1) == cv::Vec3b(0, 0, 0));
                BOOST_CHECK(dst_image.at<cv::Vec3b>(1, 0) == cv::Vec3b(0, 0, 0));
                BOOST_CHECK(dst_image.at<cv::Vec3b>(1, 1) == cv::Vec3b(0, 0, 0));
        }
private:
        static void create_data(cv::Mat& mat)
        {
                mat.create(100, ImageSegmenter::Dimension_, CV_64FC1);
                for ( int i = 0; i < mat.rows; ++i ) {
                        double* ptr = mat.ptr<double>(i);
                        ptr[0] = d(e);
                        ptr[1] = d(e);
                        ptr[2] = d(e);
                }
        }
};

BOOST_AUTO_TEST_CASE(TEST_ImageSegmenter)
{
        std::cout << "ImageSegmenter\n";
        ImageSegmenterTester::test_train();
        ImageSegmenterTester::test_row();
        ImageSegmenterTester::test_modify_probabilities();
        ImageSegmenterTester::test_create_masked_image();
}
#endif // UNIT_TEST


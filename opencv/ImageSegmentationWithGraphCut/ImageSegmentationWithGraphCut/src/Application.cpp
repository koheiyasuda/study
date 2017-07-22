//
//  Application.cpp
//  ImageSegmentation
//
//  Created by kumada on 2013/03/18.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#include <opencv2/highgui/highgui.hpp>
#include <boost/range/algorithm/find.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <boost/archive/binary_oarchive.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include <boost/serialization/map.hpp>
#include <boost/serialization/vector.hpp>
#include <fstream>
#include "Log.h"
#include "ImageSegmenter.h"
#include "Application.h"

namespace filesystem = boost::filesystem;

namespace
{
        constexpr int KeyOffset = 48;

        const std::string ColorNames[] = {
                "red",
                "green",
                "blue",
                "cyan",
                "magenta",
                "yellow",
        };

        const cv::Scalar Colors[] = {
                {  0,   0, 255}, // 0 : red
                {  0, 255,   0}, // 1 : green
                {255,   0,   0}, // 2 : blue
                {255, 255,   0}, // 3 : cyan
                {255,   0, 255}, // 4 : magenta
                {  0, 255, 255}, // 5 : yellow
        };

        void on_mouse(int event, int x, int y, int flags, void* param)
        {
                //ASSERT_LOG(std::cout << "flags = " << flags);
                Application* app = reinterpret_cast<Application*>(param);
                switch ( event ) {
                case CV_EVENT_LBUTTONDOWN:
                        if ( app->is_numeric_key(app->get_key()) ) {
                                Log::print(app->get_key() - KeyOffset, " : ", ColorNames[app->get_key() - KeyOffset]);
                                app->enable_drawing(true);
                        }
                        break;
                       
                case CV_EVENT_LBUTTONUP:
                        if ( app->is_numeric_key(app->get_key()) ) {
                                app->enable_drawing(false);
                        }
                        break;
                        
                case CV_EVENT_MOUSEMOVE:
                        if ( app->draws() && app->is_numeric_key(app->get_key()) ) {
                                
                                const cv::Point point {x, y};
                                const cv::Mat* image = app->get_src_image();
                                const cv::Vec3b& bgr = image->at<cv::Vec3b>(point);
                                /*
                                        std::uint8_t b = rgb[0];
                                        std::uint8_t g = rgb[1];
                                        std::uint8_t r = rgb[2];
                                */
                                app->add_training_data(app->get_key(), point, bgr);
                                app->draw_training_samples();
                        }
                        break;

                default:
                        break;
                };
        }
}

Application::Application()
        : src_name_{"src"}
{
}

/*! add the pixel that is seleced by the user's mouse move
    @param[in] key      numeric number [0,9]
    @param[in] point    pixel position
    @param[in] color    pixel color(r,g,b)
 */
void Application::add_training_data(
        int              key,
        const cv::Point& point,
        const cv::Vec3b& color
) {
        training_samples_[key - KeyOffset].push_back({point, color});
}

/*! draw the pixels that are extracted by the user
    @param[in]  pixels  training sample
    @param[in]  color   color used for drawing
    @param[out] image   image on which the sample is drawn
 */
void Application::draw_training_sample(
        const Pixels&     pixels,
        const cv::Scalar& color,
        cv::Mat&          image
) const {
        boost::for_each(pixels, [&](const Pixel& pixel) {
                const cv::Point& point = pixel.point_;
                cv::circle(image, point, Radius_, color);
        });
}

/*! This function calls draw_training_sample to draw each training sample
 */
void Application::draw_training_samples()
{
        src_image_->copyTo(src_image_with_training_data_);
        boost::for_each(training_samples_, [&](const std::map<int, Pixels>::value_type& pair) {
                draw_training_sample(pair.second, Colors[pair.first], src_image_with_training_data_);
        });
        show(src_name_, src_image_with_training_data_);
}

void Application::show_src_image()
{
        show(src_name_, *src_image_);
}

/*! show an arbitrary image using OpenCV
    @param[in] name     window's name
    @param[in] image    the image to draw
 */
void Application::show(
        const std::string& name,
        const cv::Mat&     image
) {
        if ( window_names_.end() == boost::find(window_names_, name) ) {
                cv::namedWindow(name);
                window_names_.push_back(name);
        }
        cv::imshow(name, image);
}

void Application::set_mouse_callback_to_src_image()
{
        cv::setMouseCallback(src_name_, on_mouse, this);
}

void Application::set_src_image(const cv::Mat* src_image)
{
        src_image_ = src_image;
}

// test ok
/*! convert to OpenCV's matrix
    @param[in]  pixels
    @param[out] mat
 */
void Application::convert(
        const Pixels& pixels,
        cv::Mat&      mat
) const {
        for ( std::size_t i = 0, n = pixels.size(); i < n; ++i ) {
                const cv::Vec3b& color = pixels[i].color_;
                double* dst = mat.ptr<double>(static_cast<int>(i));
                dst[0] = color[0] / 255.0; // b
                dst[1] = color[1] / 255.0; // g
                dst[2] = color[2] / 255.0; // r
        }
}

//! serialization
void Application::save_training_samples(const std::string& filename) const
{
        std::ofstream ofs(filename);
        boost::archive::binary_oarchive oa(ofs);
        oa << training_samples_;
}

//! serialization
void Application::load_training_samples(const std::string& filename)
{
        std::ifstream ifs(filename);
        boost::archive::binary_iarchive ia(ifs);
        training_samples_.clear();
        ia >> training_samples_;
}

// test ok
void Application::create_training_data()
{
        training_data_.clear();
        training_data_.reserve(training_samples_.size());
        keys_.clear();
        keys_.reserve(training_samples_.size());
        for ( const auto& pair : training_samples_ ) {
                const Pixels& pixels = pair.second;
                //Log::print("pair.first = ", pair.first);
                keys_.push_back(pair.first);
                int rows = static_cast<int>(pixels.size());
                cv::Mat tmp(rows, ImageSegmenter::Dimension_, CV_64FC1);
                convert(pixels, tmp);
                training_data_.push_back(std::move(tmp));
        }
}

void Application::clear_windows()
{
        for ( const auto& name : window_names_ ) {
                if ( name != src_name_ ) {
                        cv::destroyWindow(name);
                }
        }
        window_names_.clear();
        window_names_.push_back(src_name_);        
}

void Application::set_output_dir_path(const std::string& output_dir)
{
        output_dir_ = output_dir;
        if ( !filesystem::exists(output_dir_) ) {
                throw std::runtime_error(output_dir + " directory does not exist.");
        }
}

void Application::loop()
{
        while ( true ) {
                key_ = cv::waitKey();
                //ASSERT_LOG(std::cout << "key_ = " << key_);
                switch( static_cast<char>(key_) )
                {
                case '\x1b': // ESC
                        std::cout << "* exiting\n";
                        return;
                    
                case 'e':
                {
                        std::cout << "* execute\n";
                        //load_training_samples("/Users/kumada/Data/graph-cut/output/training_sample.dat");
                        create_training_data();
                        //save_training_samples("/Users/kumada/Data/graph-cut/output/training_sample.dat");
                        image_segmenter_->train(training_data_);
                        image_segmenter_->predict(*src_image_);
                        image_segmenter_->calculate_edges();
                        image_segmenter_->modify_probabilities();
                        image_segmenter_->execute_graphcut();
                        image_segmenter_->create_graphcut_labeled_images();

//                        image_segmenter_->create_max_labeled_images();
                        const auto& graphcut_labeled_images = image_segmenter_->get_graphcut_labeled_images();
                        for ( std::size_t i = 0; i < graphcut_labeled_images.size(); ++i ) {
                                std::string name = ColorNames[keys_[i]] + "-label";
                                show(name, graphcut_labeled_images[i]);
                                name += ".jpg";
                                cv::imwrite((output_dir_ / name).string(), graphcut_labeled_images[i]);
                        }
//                        const auto& max_labeled_images = image_segmenter_->get_max_labeled_images();
//                        for ( std::size_t i = 0; i < max_labeled_images.size(); ++i ) {
//                                std::string name = ColorNames[keys_[i]] + "-label";
//                                show(name, max_labeled_images[i]);
//                                name += ".jpg";
//                                cv::imwrite((output_dir_ / name).string(), max_labeled_images[i]);
//                        }

                        cv::imwrite((output_dir_ / "src.jpg").string(), src_image_with_training_data_);
                }
        
                break;
                
                case 'c':
                        std::cout << "* clear\n";

                        boost::for_each(training_samples_, [](std::map<int, Pixels>::value_type& item){
                                item.second.clear();
                        });
                        training_samples_.clear();
                        clear_windows();
                        const_cast<Application*>(this)->show(src_name_, *src_image_);
                        break;
                }
        }
}

#if(UNIT_TEST)
#define BOOST_TEST_DYN_LINK

#include <boost/test/unit_test.hpp>
#include <random>

namespace
{
        std::default_random_engine e {};
        std::uniform_int_distribution<std::uint8_t> d {0, 255};
}

class ApplicationTester
{
public:
        static void test_convert()
        {
                Application application {};
                Application::Pixels pixels {};
                create_pixels(pixels);
         
                int rows = static_cast<int>(pixels.size());
                cv::Mat mat(rows, ImageSegmenter::Dimension_, CV_64FC1);
                
                application.convert(pixels, mat);
                check(pixels, mat);
        }
        
        static void test_create_training_data()
        {
                Application application {};
                constexpr int num = 11;
                for ( int i = 0; i < num; ++i ) {
                        Application::Pixels pixels {};
                        create_pixels(pixels);
                        application.training_samples_.emplace(i, std::move(pixels));
                }
                
                application.create_training_data();
                
                for ( std::size_t i = 0; i < application.training_data_.size(); ++i ) {
                        check(application.training_samples_[static_cast<int>(i)], application.training_data_[i]);
                }
        }        
private:
        static void check(const Application::Pixels& pixels, const cv::Mat& mat)
        {
                constexpr double Epsilon = 1.0e-08;
                for ( int i = 0; i < mat.rows; ++i ) {
                        const double* ptr = mat.ptr<double>(i);
                        const Pixel& pixel = pixels[i];
                        const cv::Vec3b& color = pixel.color_;
                        BOOST_CHECK_CLOSE(ptr[0], color[0] / 255.0, Epsilon);
                        BOOST_CHECK_CLOSE(ptr[1], color[1] / 255.0, Epsilon);
                        BOOST_CHECK_CLOSE(ptr[2], color[2] / 255.0, Epsilon);
                }
        }
        
        static void create_pixels(Application::Pixels& pixels)
        {
                constexpr int num = 10;
                pixels.reserve(num);
                for ( int i = 0; i < num; ++i ) {
                        
                        Pixel pixel;
                        pixel.color_[0] = d(e);
                        pixel.color_[1] = d(e);
                        pixel.color_[2] = d(e);
                        
                        pixels.push_back(std::move(pixel));
                }
        }
};

BOOST_AUTO_TEST_CASE(TEST_Application)
{
        std::cout << "Application\n";
        ApplicationTester::test_convert();
        ApplicationTester::test_create_training_data();
       
}
#endif // UNIT_TEST

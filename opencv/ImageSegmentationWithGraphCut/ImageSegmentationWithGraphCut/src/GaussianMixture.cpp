//
//  GaussianMixture.cpp
//  ImageSegmentation
//
//  Created by kumada on 2013/03/23.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#include "GaussianMixture.h"
#include <opencv2/ml/ml.hpp>
#include "Log.h"

namespace
{
        constexpr int Dimension = 3;
}

GaussianMixture::GaussianMixture(const cv::EM& model)
        : nclusters_(model.get<int>("nclusters"))
        , weights_(model.get<cv::Mat>("weights")) // 1 x cluster_num
        , means_(model.get<cv::Mat>("means")) // cluster_num x dimension
        , covs_(model.get<std::vector<cv::Mat>>("covs"))
        , inverse_covs_(covs_.size())
        , determinants_(covs_.size())
        , has_inverse_covs_(covs_.size())
{
        assert(covs_.size() == nclusters_);
        for ( std::size_t i = 0; i < covs_.size(); ++i ) {
                const cv::Mat& cov = covs_[i];
                has_inverse_covs_[i] = cv::invert(cov, inverse_covs_[i]);
                determinants_[i] = cv::determinant(cov);
        }
}

/*! calculate log probabilities
        @param[in]  sample
        @param[out] log_probs
 */
void GaussianMixture::calculate_log_probability(
        const cv::Mat&  sample,
        cv::Mat&        log_probs
) const {
        assert(sample.type() == CV_64FC1);
        assert(sample.rows == 1 && sample.cols == Dimension);
        log_probs.create(1, nclusters_, CV_64FC1);

        for ( int k = 0; k < nclusters_; ++k ) {
                const cv::Mat mean = means_.row(k);
                assert(mean.rows == 1 && mean.cols == Dimension);
                
                const cv::Mat& inverse_cov = inverse_covs_[k];
                assert(inverse_cov.type() == CV_64FC1);
                assert(inverse_cov.rows == Dimension && inverse_cov.cols == Dimension);
                
                const double log_ak = - 0.5 * std::log(determinants_[k]);
                const cv::Mat d = sample - mean;
                const cv::Mat bk_mat = -0.5 * d * inverse_cov * d.t();
                const double bk = bk_mat.at<double>(0, 0);
                const double weight = weights_.at<double>(0, k);
                log_probs.at<double>(0, k) = std::log(weight) + log_ak + bk;
        }
}

/*! calculate probabilities
        @param[in]  sample
        @param[out] probs
 */
void GaussianMixture::calculate_probability(
        const cv::Mat&  sample,
        cv::Mat&        probs
) const {
        assert(sample.type() == CV_64FC1);
        assert(sample.rows == 1 && sample.cols == Dimension);
        probs.create(1, nclusters_, CV_64FC1);

        for ( int k = 0; k < nclusters_; ++k ) {
                const cv::Mat mean = means_.row(k);
                assert(mean.rows == 1 && mean.cols == Dimension);
                const cv::Mat& inverse_cov = inverse_covs_[k];
                assert(inverse_cov.type() == CV_64FC1);
                assert(inverse_cov.rows == Dimension && inverse_cov.cols == Dimension);
                cv::Mat d = sample - mean;
                const cv::Mat bk_mat = -0.5 * d * inverse_cov * d.t();
                assert(bk_mat.type() == CV_64FC1);
                assert(bk_mat.cols == 1 && bk_mat.rows == 1);
                const double bk = bk_mat.at<double>(0, 0);
                const double weight = weights_.at<double>(0, k);
                probs.at<double>(0, k) = weight * std::exp(bk) / std::sqrt(determinants_[k]);
        }
}

#if(UNIT_TEST)
#define BOOST_TEST_DYN_LINK

#include <boost/test/unit_test.hpp>

namespace
{
        void test_mat_0()
        {
                double atmp[] = {1, 2, 3, 4, 5, 6};
                cv::Mat a(2, 3, CV_64FC1, atmp);
                double btmp[] = {1, 1, 1, 4, 4, 4};
                cv::Mat b(2, 3, CV_64FC1, btmp);
                cv::Mat c = a - b;
                const double answers[] = {0, 1, 2, 0, 1, 2};
                int k = 0;
                for ( int j = 0; j < a.rows; ++j ) {
                        const double* ptr = c.ptr<double>(j);
                        for ( int i = 0; i < a.cols; ++i ) {
                                BOOST_CHECK(answers[k] == ptr[i]);
                                ++k;
                        }
                }
        }
        
        void test_mat_1()
        {
                double tmp[] = {1, 2, 3, 4};
                cv::Mat a(2, 2, CV_64FC1, tmp);
                cv::Mat b;
                cv::invert(a, b);
                cv::Mat c = a * b;
                const double ans[] = {1, 0, 0, 1};
                int k = 0;
                for ( int j = 0; j < c.rows; ++j ) {
                        const double* ptr = c.ptr<double>(j);
                        for ( int i = 0; i < c.cols; ++i ) {
                                BOOST_CHECK(ptr[i] == ans[k]);
                                ++k;
                        }
                }
                
                double ttmp[] = {1, 2};
                cv::Mat t(2, 1, CV_64FC1, ttmp);
                cv::Mat d = t.t() * a * t;
                BOOST_CHECK(d.at<double>(0, 0) == 27);
                BOOST_CHECK(d.type() == CV_64FC1);
                BOOST_CHECK(d.rows == 1);
                BOOST_CHECK(d.cols == 1);
        }
}

BOOST_AUTO_TEST_CASE(TEST_GaussianMixture)
{
        std::cout << "GaussianMixture\n";
        test_mat_0();
        test_mat_1();
}
#endif // UNIT_TEST
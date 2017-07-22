//
//  GaussianMixture.h
//  ImageSegmentation
//
//  Created by kumada on 2013/03/23.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __ImageSegmentation__GaussianMixture__
#define __ImageSegmentation__GaussianMixture__

#include <opencv2/imgproc/imgproc.hpp>

namespace cv
{
        class EM;
}

//! This class represents the Gaussian Mixture Model
class GaussianMixture
{
public:
        explicit GaussianMixture(const cv::EM& model);
        ~GaussianMixture() = default;
        
        //! calculate log probabilities
        void calculate_log_probability(const cv::Mat& sample, cv::Mat& probs) const;
        
        //! calculate probabilities
        void calculate_probability(const cv::Mat& sample, cv::Mat& probs) const;
        
        const int get_nclusters() const
        {
                return nclusters_;
        }
        
private:
        GaussianMixture(const GaussianMixture&) = delete;
        GaussianMixture& operator=(const GaussianMixture&) = delete;
        GaussianMixture(GaussianMixture&&) = delete;
        GaussianMixture& operator=(GaussianMixture&&) = delete;

        //! the number of the Gaussian components
        const int                  nclusters_;
        
        //! weights assigned to the Gaussians
        const cv::Mat              weights_;
        
        //! means of the Gaussians
        const cv::Mat              means_;
        
        //! covariance matrices of the Gaussians
        const std::vector<cv::Mat> covs_;
        
        //! their inverse matrices
        std::vector<cv::Mat>       inverse_covs_;

        //! their determinants
        std::vector<double>        determinants_;
        
        std::vector<double>        has_inverse_covs_;
};
#endif /* defined(__ImageSegmentation__GaussianMixture__) */

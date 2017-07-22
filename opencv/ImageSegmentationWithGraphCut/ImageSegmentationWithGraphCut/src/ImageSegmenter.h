//
//  ImageSegmenter.h
//  ImageSegmentation
//
//  Created by kumada on 2013/03/16.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __ImageSegmentation__ImageSegmenter__
#define __ImageSegmentation__ImageSegmenter__

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/ml/ml.hpp>
#include "Parameters.h"

class GaussianMixture;

class ImageSegmenter
{
        friend class ImageSegmenterTester;
        
public:
        static constexpr int Dimension_ {3}; // (r,g,b)

        explicit ImageSegmenter(const Parameters& params);
        ~ImageSegmenter() = default;

        //! set an input image
        void set_src_image(const cv::Mat* src_image);
        
        //! execute training
        void train(const std::vector<cv::Mat>& training_data);
        
        //! execute prediction
        void predict(const cv::Mat& image);
        
        //! create results
        void create_max_labeled_images();
        
        const cv::Mat& get_max_labels() const
        {
                return max_labels_;
        }

        const cv::Mat& get_probabilites() const
        {
                return probabilities_;
        }

        const std::vector<cv::Mat>& get_max_labeled_images() const
        {
                return max_labeled_images_;
        }

        const std::vector<cv::Mat>& get_graphcut_labeled_images() const
        {
                return graphcut_labeled_images_;
        }

        void calculate_edges();
        void execute_graphcut();
        
        //! make probabilities be unit vectors
        void modify_probabilities();
        
        void create_graphcut_labeled_images();

private:
        ImageSegmenter(const ImageSegmenter&) = delete;
        ImageSegmenter& operator=(const ImageSegmenter&) = delete;
        ImageSegmenter(ImageSegmenter&&) = delete;
        ImageSegmenter& operator=(ImageSegmenter&&) = delete;
        
        typedef std::shared_ptr<GaussianMixture> GaussianMixturePtr;
     
        //! input image
        const cv::Mat*  src_image_;
        
        //! differences along x axis and y axis
        cv::Mat         dx_image_;
        cv::Mat         dy_image_;

        
        //! resultant images
        std::vector<cv::Mat>            max_labeled_images_;
        std::vector<cv::Mat>            graphcut_labeled_images_;
        
        std::vector<cv::EM>             models_;
        std::vector<GaussianMixturePtr> gaussian_mixtures_;
        
        Parameters                      parameters_;
        cv::Mat                         probabilities_;
        cv::Mat                         max_labels_;
        cv::Mat                         graphcut_labels_;
        
        int                             smoothing_term_weight_;
        
        void create_masked_image(const cv::Mat& labels, int index, cv::Mat& image) const;
        
};
#endif /* defined(__ImageSegmentation__ImageSegmenter__) */

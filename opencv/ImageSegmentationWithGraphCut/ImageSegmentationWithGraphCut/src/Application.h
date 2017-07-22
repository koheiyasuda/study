//
//  Application.h
//  ImageSegmentation
//
//  Created by kumada on 2013/03/18.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __ImageSegmentation__Application__
#define __ImageSegmentation__Application__

#include <string>
#include <vector>
#include <opencv2/imgproc/imgproc.hpp>
#include <boost/filesystem.hpp>
#include "Pixel.h"

class ImageSegmenter;

/*!
        This class provides the following functions:
            1) function to create input data passed to the image segmentation
            2) function to display the results given by the image segmentation
 */
class Application
{
        friend class ApplicationTester;
        typedef std::vector<Pixel> Pixels;
        
public:
        Application();
        ~Application() = default;
        
        //! set the input image
        void set_src_image(const cv::Mat* src_image);
        
        //! show the input image
        void show_src_image();
        
        //! associate the mouse callback with the input image
        void set_mouse_callback_to_src_image();
        
        //! show the arbitrary image
        void show(const std::string& name, const cv::Mat& image);

        //! execute the main loop
        void loop();
        
        //! add the pixel that is specified by the user's mouse move
        void add_training_data(int key, const cv::Point& point, const cv::Vec3b& color);
        
        //! draw the pixels that are extracted by the user
        void draw_training_samples();
       
        //! permit only keys with the range[FirstKey_,LastKey_]
        /*!
                The user can specify numeric numbers from 0 to 5.
                These numbers distinguish among training data.
         */
        bool is_numeric_key(int flags) const
        {
                return FirstKey_ <= flags && flags <= LastKey_;
        }
        
        const cv::Mat* get_src_image() const
        {
                return src_image_;
        }
        
        const std::string& get_src_name() const
        {
                return src_name_;
        }
        
        void set_image_segmenter(std::shared_ptr<ImageSegmenter> image_segmenter)
        {
                image_segmenter_ = image_segmenter;
        }
        
        void set_output_dir_path(const std::string& output_dir);
        
        int get_key() const
        {
                return key_;
        }
        
        void enable_drawing(bool flag)
        {
                draws_ = flag;
        }
        
        bool draws() const
        {
                return draws_;
        }
        
        void clear_windows();
        
private:
        Application(const Application&) = delete;
        Application& operator=(const Application&) = delete;
        Application(Application&&) = delete;
        Application& operator=(Application&&) = delete;

        //! properties used for drawing training data
        static constexpr int Radius_    {2};
        static constexpr int Thickness_ {2};
        
        //! numeric key range [FirstKey_,LastKey_]
        static constexpr int FirstKey_ {48};
        static constexpr int LastKey_  {53};
        
        //! names used for cv::namedWindow
        std::vector<std::string>        window_names_;
        
        const cv::Mat*                  src_image_;
        const std::string               src_name_;
        boost::filesystem::path         output_dir_;
        
        //! image with training data specified by the user
        cv::Mat                         src_image_with_training_data_;
        
        std::shared_ptr<ImageSegmenter> image_segmenter_;
        
        //! training data the user selects
        std::map<int, Pixels>           training_samples_;
        
        //! input data for the image segementer
        std::vector<cv::Mat>            training_data_;
        
        int                             key_;
        bool                            draws_;
        std::vector<int>                keys_;
        
        void draw_training_sample(const Pixels& pixels, const cv::Scalar& color, cv::Mat& image) const;
        void create_training_data();
        void save_training_samples(const std::string& filename) const;
        void load_training_samples(const std::string& filename);
        void convert(const Pixels& pixels, cv::Mat& mat) const;
};

#endif /* defined(__ImageSegmentation__Application__) */

//
//  main.cpp
//  ImageSegmentation
//
//  Created by kumada on 2013/03/16.
//  Copyright (c) 2013年 kumada. All rights reserved.
//
#if(UNIT_TEST)
#define BOOST_TEST_MAIN
#define BOOST_TEST_DYN_LINK

#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_CASE(TEST_main)
{
        std::cout << "main\n";
}

#else // UNIT_TEST

#include <opencv2/highgui/highgui.hpp>
#include "ImageSegmenter.h"
#include "Parameters.h"
#include "Application.h"
#include "Inquirer.h"
#include <boost/program_options.hpp>

namespace options = boost::program_options;

namespace
{
        //! extract a parameter from "vm"
        /*!
                @param[in] name          parameter name to extract
                @param[in] error_message error message in case of failure
                @param[in] vm            argument container
         */
        template<typename T>
        inline const T extract_parameter(
                const std::string&            name,
                const std::string&            error_message,
                const options::variables_map& vm
        ) {
                if ( vm.count(name) ) {
                        return vm[name].as<T>();
                } else {
                        throw std::runtime_error(error_message);
                }
        }
}

int main(int argc, const char * argv[])
{
        try {
                std::cout << argv[0] << std::endl;
                options::options_description desc("allowed options");
                desc.add_options()
                        ("help", "produce help message")
                        ("input", options::value<std::string>(), "set a path to an input image")
                        ("nclusters", options::value<int>()->default_value(5), "set the number of clusters")
                        ("output-dir", options::value<std::string>(), "set a path to a directory to save outputs")
                        ("ratio", options::value<double>()->default_value(0.1), "set the ratio (smoothing/data)")
                
                ;
                options::variables_map vm;
                options::store(options::parse_command_line(argc, argv, desc), vm);
                options::notify(vm);
                
                if ( !vm.count("input") || !vm.count("output-dir") || vm.count("help") ) {
                        std::cout << desc << '\n';
                        return 1;
                }
                
                const std::string& input = extract_parameter<std::string>("input", "invalid input", vm);
                cv::Mat src_image = cv::imread(input);
                const std::string& output_dir = extract_parameter<std::string>("output-dir", "invalid directory path", vm);
                
                Application app;
                app.set_src_image(&src_image);
                app.set_output_dir_path(output_dir);
                app.show_src_image();
                app.set_mouse_callback_to_src_image();
                
                Parameters params;
                params.num_gaussians_ = extract_parameter<int>("nclusters", "invalid nclusters", vm);
                params.ratio_ = extract_parameter<double>("ratio", "invalid ratio", vm);
                std::shared_ptr<ImageSegmenter> segmenter = std::make_shared<ImageSegmenter>(params);
                segmenter->set_src_image(&src_image);
                
                app.set_image_segmenter(segmenter);
                app.loop();
        } catch (const std::exception& error) {
                std::cout << error.what() << std::endl;
        }
        return 0;
}

#endif // UNIT_TEST
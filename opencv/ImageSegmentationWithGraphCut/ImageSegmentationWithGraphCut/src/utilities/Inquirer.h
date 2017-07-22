//
//  Inquirer.h
//  ImageSegmentation
//
//  Created by kumada on 2013/03/24.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __ImageSegmentation__Inquirer__
#define __ImageSegmentation__Inquirer__

#include <string>

namespace cv
{
        class Mat;
}

class Inquirer
{
public:
        static void inquire(const cv::Mat& mat, const std::string& filename);
        static void inquire_int(const cv::Mat& mat, const std::string& filename);

};

#endif /* defined(__ImageSegmentation__Inquirer__) */

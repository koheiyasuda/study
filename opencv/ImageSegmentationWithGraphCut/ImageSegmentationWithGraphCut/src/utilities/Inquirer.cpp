//
//  Inquirer.cpp
//  ImageSegmentation
//
//  Created by kumada on 2013/03/24.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#include "Inquirer.h"
#include <opencv2/imgproc/imgproc.hpp>
#include <fstream>
namespace
{
        const std::string& OutputDirectory = "/Users/kumada/Data/graph-cut/output/";
}

void Inquirer::inquire(const cv::Mat& mat, const std::string& filename)
{
        std::ofstream ofs(OutputDirectory + filename);
        for ( int j = 0; j < mat.rows; ++j ) {
                const double* ptr = mat.ptr<double>(j);
                for ( int i = 0; i < mat.cols; ++i ) {
                        ofs << i << " " << j << " " << ptr[i] << std::endl;
                }
        }
}

void Inquirer::inquire_int(const cv::Mat& mat, const std::string& filename)
{
        std::ofstream ofs(OutputDirectory + filename);
        for ( int j = 0; j < mat.rows; ++j ) {
                const int* ptr = mat.ptr<int>(j);
                for ( int i = 0; i < mat.cols; ++i ) {
                        ofs << i << " " << j << " " << ptr[i] << std::endl;
                }
        }
}

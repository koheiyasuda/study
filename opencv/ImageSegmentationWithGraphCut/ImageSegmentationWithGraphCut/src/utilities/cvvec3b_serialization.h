//
//  cvvec3b_serialization.h
//  InteractiveImageSegmentationWithEdges
//
//  Created by kumada on 2013/04/10.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __InteractiveImageSegmentationWithEdges__cvvec3b_serialization__
#define __InteractiveImageSegmentationWithEdges__cvvec3b_serialization__

#include <opencv2/opencv.hpp>
#include <boost/serialization/split_free.hpp>

BOOST_SERIALIZATION_SPLIT_FREE(cv::Vec3b);
namespace boost
{
        namespace serialization
        {
                //! Serialization support for cv::Point
                template<typename Archive>
                void save(Archive& ar, const cv::Vec3b& v, const std::uint32_t version)
                {
                        std::uint8_t b = v[0];
                        std::uint8_t g = v[1];
                        std::uint8_t r = v[2];
                        ar & b;
                        ar & g;
                        ar & r;
                }
                
                //! Serialization support for cv::Point
                template<typename Archive>
                void load(Archive& ar, cv::Vec3b& v, const std::uint32_t version)
                {
                        std::uint8_t b;
                        std::uint8_t g;
                        std::uint8_t r;
                        ar & b;
                        ar & g;
                        ar & r;
                        v[0] = b;
                        v[1] = g;
                        v[2] = r;
                }
        }
}

#endif /* defined(__InteractiveImageSegmentationWithEdges__cvvec3b_serialization__) */

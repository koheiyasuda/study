//
//  cvpoint_serialization.h
//  InteractiveImageSegmentationWithEdges
//
//  Created by kumada on 2013/04/10.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __InteractiveImageSegmentationWithEdges__cvpoint_serialization__
#define __InteractiveImageSegmentationWithEdges__cvpoint_serialization__

#include <opencv2/opencv.hpp>
#include <boost/serialization/split_free.hpp>

BOOST_SERIALIZATION_SPLIT_FREE(cv::Point);
namespace boost
{
        namespace serialization
        {
                //! Serialization support for cv::Point
                template<typename Archive>
                void save(Archive& ar, const cv::Point& p, const std::uint32_t version)
                {
                        int x = p.x;
                        int y = p.y;
                        ar & x;
                        ar & y;
                }
                
                //! Serialization support for cv::Point
                template<typename Archive>
                void load(Archive& ar, cv::Point& p, const std::uint32_t version)
                {
                        int x;
                        int y;
                        ar & x;
                        ar & y;
                        p.x = x;
                        p.y = y;
                }
        }
}

#endif /* defined(__InteractiveImageSegmentationWithEdges__cvpoint_serialization__) */

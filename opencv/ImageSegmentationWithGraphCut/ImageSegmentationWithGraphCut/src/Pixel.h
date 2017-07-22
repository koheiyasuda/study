//
//  Pixel.h
//  InteractiveImageSegmentationWithEdges
//
//  Created by kumada on 2013/04/12.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __InteractiveImageSegmentationWithEdges__Pixel__
#define __InteractiveImageSegmentationWithEdges__Pixel__

#include <opencv2/imgproc/imgproc.hpp>
#include <boost/serialization/serialization.hpp>
#include "cvpoint_serialization.h"
#include "cvvec3b_serialization.h"

//! This structure represents a pixel on an image
struct Pixel
{
        cv::Point point_;
        cv::Vec3b color_;
        
private:
        //! seriallization
        friend class boost::serialization::access;
        template<typename Archive>
        void serialize(Archive& ar, std::uint32_t ver)
        {
                ar & point_;
                ar & color_;
        }
};

inline bool operator==(const Pixel& lhs, const Pixel& rhs)
{
        return lhs.point_ == rhs.point_ && lhs.color_ == rhs.color_;
}


#endif /* defined(__InteractiveImageSegmentationWithEdges__Pixel__) */

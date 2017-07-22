//
//  cvpoint_serialization.cpp
//  InteractiveImageSegmentationWithEdges
//
//  Created by kumada on 2013/04/10.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#if(UNIT_TEST)
#define BOOST_TEST_DYN_LINK

#include <boost/test/unit_test.hpp>
#include "cvpoint_serialization.h"
#include <boost/archive/binary_oarchive.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include <fstream>

namespace
{
        void test_save(const std::string& filename)
        {
                cv::Point p {1, 2};
                std::ofstream file(filename);
                boost::archive::binary_oarchive oa(file);
                oa << p;
        }
        
        void test_load(const std::string& filename)
        {
                std::ifstream file(filename);
                boost::archive::binary_iarchive ia(file);
                cv::Point p;
                ia >> p;
                BOOST_CHECK(p.x == 1);
                BOOST_CHECK(p.y == 2);
        }
}

BOOST_AUTO_TEST_CASE(TEST_cvpoint_serialization)
{
        std::cout << "cvpoint_serialization\n";
        const std::string filename = "/Users/kumada/Data/graph-cut/output/cvpoint_save.dat";
        test_save(filename);
        test_load(filename);
}

#endif // UNIT_TEST

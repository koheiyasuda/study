//
//  cvvec3b_serialization.cpp
//  InteractiveImageSegmentationWithEdges
//
//  Created by kumada on 2013/04/10.
//  Copyright (c) 2013年 kumada. All rights reserved.
//


#if(UNIT_TEST)
#define BOOST_TEST_DYN_LINK

#include <boost/test/unit_test.hpp>
#include "cvvec3b_serialization.h"
#include <boost/archive/binary_oarchive.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include <fstream>

namespace
{
        void test_save(const std::string& filename)
        {
                cv::Vec3b v {1, 2, 3};
                std::ofstream file(filename);
                boost::archive::binary_oarchive oa(file);
                oa << v;
        }
        
        void test_load(const std::string& filename)
        {
                std::ifstream file(filename);
                boost::archive::binary_iarchive ia(file);
                cv::Vec3b v;
                ia >> v;
                BOOST_CHECK(v[0] == 1);
                BOOST_CHECK(v[1] == 2);
                BOOST_CHECK(v[2] == 3);
        }
}

BOOST_AUTO_TEST_CASE(TEST_cvvec3b_serialization)
{
        std::cout << "cvvec3b_serialization\n";
        const std::string filename = "/Users/kumada/Data/graph-cut/output/cvvec3b_save.dat";
        test_save(filename);
        test_load(filename);
}

#endif // UNIT_TEST


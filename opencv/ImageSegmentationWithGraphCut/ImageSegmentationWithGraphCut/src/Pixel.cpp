//
//  Pixel.cpp
//  InteractiveImageSegmentationWithEdges
//
//  Created by kumada on 2013/04/12.
//  Copyright (c) 2013年 kumada. All rights reserved.
//
#if(UNIT_TEST)
#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>
#include "Pixel.h"
#include <boost/archive/binary_oarchive.hpp>
#include <boost/archive/binary_iarchive.hpp>
#include <fstream>
#include <boost/serialization/map.hpp>
#include <boost/serialization/vector.hpp>

namespace
{
        void test_save(const std::string& filename)
        {
                Pixel pixel;
                cv::Point p {1, 2};
                cv::Vec3b v {3, 4, 5};
                pixel.point_ = p;
                pixel.color_ = v;
                
                std::ofstream file(filename);
                boost::archive::binary_oarchive oa {file};
                oa << pixel;
        }
        
        void test_load(const std::string& filename)
        {
                std::ifstream file(filename);
                boost::archive::binary_iarchive ia {file};
                Pixel pixel;
                ia >> pixel;
                BOOST_CHECK(pixel.point_ == cv::Point(1, 2));
                BOOST_CHECK(pixel.color_ == cv::Vec3b(3, 4, 5));
        }
        
        void test_save_vector(const std::string& filename)
        {
                std::vector<Pixel> pixels;
                pixels.emplace_back(Pixel{{1, 2}, {3, 4, 5}});
                pixels.emplace_back(Pixel{{6, 7}, {8, 9, 1}});
                std::ofstream ofs {filename};
                boost::archive::binary_oarchive oa {ofs};
                oa << pixels;
        }
        
        void test_load_vector(const std::string& filename)
        {
                std::ifstream ifs {filename};
                std::vector<Pixel> pixels;
                boost::archive::binary_iarchive ia {ifs};
                ia >> pixels;
                
                const Pixel answers[] = { {{1, 2}, {3, 4, 5}}, {{6, 7}, {8, 9, 1}} };
                for ( std::size_t i = 0; i < pixels.size(); ++i ) {
                        BOOST_CHECK(pixels[i] == answers[i]);
                }
        }
        
        void test_save_map(const std::string& filename)
        {
                typedef std::vector<Pixel> Pixels;
                std::map<int, Pixels> map_pixels;
                
                Pixels pixels0;
                pixels0.emplace_back(Pixel{{1, 2}, {3, 4, 5}});
                pixels0.emplace_back(Pixel{{6, 7}, {8, 9, 1}});
                map_pixels[1] = std::move(pixels0);

                Pixels pixels1;
                pixels1.emplace_back(Pixel{{2, 1}, {4, 3, 5}});
                pixels1.emplace_back(Pixel{{7, 6}, {1, 9, 8}});
                map_pixels[3] = std::move(pixels1);
                
                std::ofstream ofs(filename);
                boost::archive::binary_oarchive oa {ofs};
                oa << map_pixels;
        }
        
        void test_load_map(const std::string& filename)
        {
                typedef std::vector<Pixel> Pixels;
                std::ifstream ifs {filename};
                boost::archive::binary_iarchive ia {ifs};
                std::map<int, Pixels> pixels;
                ia >> pixels;
                
                BOOST_CHECK(( pixels[1][0] == Pixel{{1, 2}, {3, 4, 5}} ));
                BOOST_CHECK(( pixels[1][1] == Pixel{{6, 7}, {8, 9, 1}} ));
                BOOST_CHECK(( pixels[3][0] == Pixel{{2, 1}, {4, 3, 5}} ));
                BOOST_CHECK(( pixels[3][1] == Pixel{{7, 6}, {1, 9, 8}} ));
        }
}

BOOST_AUTO_TEST_CASE(TEST_Pixel)
{
        std::cout << "Pixel\n";
        const std::string filename = "/Users/kumada/Data/graph-cut/output/pixel_save.dat";
        test_save(filename);
        test_load(filename);
        test_save_map(filename);
        test_load_map(filename);
        test_save_map(filename);
        test_load_map(filename);
        test_save_vector(filename);
        test_load_vector(filename);
}
#endif // UNIT_TEST

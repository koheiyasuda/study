//
//  Log.h
//  ImageSegmentation
//
//  Created by kumada on 2013/03/23.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __ImageSegmentation__Log__
#define __ImageSegmentation__Log__

#include <iostream>
#include <boost/format.hpp>

class Log
{
public:
        template<typename T>
        static bool print(const T& message)
        {
                std::cout << message << std::endl;
                return true;
        }
        
        template<typename T, typename... Types>
        static bool print(const T& arg, const Types&... args)
        {
                std::cout << arg;
                return print(args...);
        }
};



#endif /* defined(__ImageSegmentation__Log__) */

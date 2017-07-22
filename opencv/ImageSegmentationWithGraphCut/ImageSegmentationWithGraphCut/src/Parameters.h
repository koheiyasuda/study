//
//  Parameters.h
//  ImageSegmentation
//
//  Created by kumada on 2013/03/16.
//  Copyright (c) 2013年 kumada. All rights reserved.
//

#ifndef __ImageSegmentation__Parameters__
#define __ImageSegmentation__Parameters__

struct Parameters
{
        int num_gaussians_;
        
        //! ratio of smoothing-term coefficient to data-term one
        double ratio_;
};
#endif /* defined(__ImageSegmentation__Parameters__) */

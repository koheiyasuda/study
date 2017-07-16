//------------------------------------------------------------------------------
//  Rect.h
//
//  You may modify and distribute this source code freely as long as the 
//  following information is included:
//
//  Copyright © Andrew Lim 2005
//  danteshamest@gmail.com
//------------------------------------------------------------------------------

#ifndef Rect_H
#define Rect_H

class Rect
{
public:
  
  Rect( int x=0, int y=0, int w=0, int h=0 )
    : x(x)
    , y(y)
    , w(w)
    , h(h)
  {}
  
  bool intersects( const Rect& r ) const
  {
    if( ((x + w) >= r.x) && (x <= (r.x + r.w)) )
    {
       if( ((y + h) >= r.y) && (y <= (r.y + r.h)) )
       {
          return true;
       }
    }
    return false;
  }
  
  int x,y,w,h;
  
};

#endif

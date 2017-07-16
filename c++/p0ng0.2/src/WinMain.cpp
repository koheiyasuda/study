//------------------------------------------------------------------------------
//  WinMain.cpp
//
//  You may modify and distribute this source code freely as long as the 
//  following information is included:
//
//  Copyright © Andrew Lim 2005
//  danteshamest@gmail.com
//------------------------------------------------------------------------------

#include "Pong.h"

int WINAPI WinMain( HINSTANCE hInst, HINSTANCE hPrev, LPSTR args, int nShow )
{
  try
  {
    Pong pong ;
    return pong.run();
  }
  catch( OpenGLWindow::Exception& ex )
  {
    MessageBox( NULL, ex.getMessage(), "Error", 0 );
    return -1 ; 
  }
}

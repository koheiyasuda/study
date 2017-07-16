//------------------------------------------------------------------------------
//  OpenGLWindow.cpp
//
//  You may modify and distribute this source code freely as long as the 
//  following information is included:
//
//  Copyright © Andrew Lim 2005
//  danteshamest@gmail.com
//------------------------------------------------------------------------------

#include "OpenGLWindow.h"
#include <cassert>

//------------------------------------------------------------------------------
//  Creating an OpenGL window.
//
//  1. Register the window class.
//  2. Create the window.
//  3. Create the OpenGL rendering context.
//  4. If any of the above steps fail, all resources allocated in the 
//     constructor so far must be freed before throwing an exception.
//------------------------------------------------------------------------------

#define WINDOW_CLASS_NAME TEXT("OpenGLWindow")

int OpenGLWindow::windowCount = 0 ;

OpenGLWindow::OpenGLWindow() throw (OpenGLWindow::Exception)
  : hwnd(NULL)
  , hdc(NULL)
  , hglrc(NULL)  
{
  goto init ;
  
  // 4
  
  bad:
    if ( hglrc ) wglDeleteContext( hglrc );
    if ( hwnd  ) DestroyWindow( hwnd );
    throw OpenGLWindow::Exception( TEXT("Error creating GLWindow") ); 
    
    
  init:  
  
  // 1
  
  if ( windowCount == 0 )
  {
    WNDCLASS wc = {0};
    wc.style         = CS_OWNDC;
    wc.lpszClassName = WINDOW_CLASS_NAME ;
    wc.hInstance     = GetModuleHandle(0) ;
    wc.hbrBackground = GetSysColorBrush(COLOR_3DFACE);
    wc.lpfnWndProc   = WndProc ;
    wc.hCursor       = LoadCursor(0,IDC_ARROW);
    wc.cbWndExtra    = sizeof(OpenGLWindow*);
    if ( !RegisterClass(&wc) ) goto bad ;
  }
  windowCount++;
    
  // 2
    
  hwnd = CreateWindowEx( 0, WINDOW_CLASS_NAME, TEXT(""), WS_OVERLAPPEDWINDOW,
                         0,0,0,0,0,0, GetModuleHandle(0), this);    
  
  if ( !hwnd ) goto bad ;
    
  // 3
  
  PIXELFORMATDESCRIPTOR  pfd         = {0};   // pixel format descriptor
  int                    pixelFormat = 0;     // pixel format index
  
  if ( !(hdc = ::GetDC(hwnd)) )               // Get the window device context
    goto bad;
    
  pfd.nSize       = sizeof (pfd);             // size of PIXELFORMATDESCRIPTOR
  pfd.nVersion    = 1;                        // version should always be 1
  pfd.dwFlags     = PFD_DRAW_TO_WINDOW|       // can draw to a window/device
                    PFD_SUPPORT_OPENGL|       // supports OpenGL drawing
                    PFD_DOUBLEBUFFER;         // buffer is double-buffered
  pfd.iPixelType  = PFD_TYPE_RGBA;            // Each pixel has RGB and alpha
  pfd.cColorBits  = 16;                       // color bitplanes
  pfd.cDepthBits  = 16;                       // depth of depth (z-axis) buffer
  
  pixelFormat = ChoosePixelFormat(hdc,&pfd);  // Choose the pixel format
  
  if (!pixelFormat                         || // Could not choose pixel format
      !SetPixelFormat(hdc,pixelFormat,&pfd)|| // Could not set pixel format
      !(hglrc = wglCreateContext( hdc )) )    // Could not create RC
    goto bad ;

  wglMakeCurrent( hdc, hglrc );               // Make it the current context
}

OpenGLWindow::~OpenGLWindow()
{
  assert( hwnd  ) ;
  assert( hglrc ) ;  
  wglDeleteContext( hglrc );
  DestroyWindow( hwnd );
  
  if ( --windowCount == 0 )
    UnregisterClass( WINDOW_CLASS_NAME, GetModuleHandle(NULL) );
}


LRESULT OpenGLWindow::onMessage(UINT msg,WPARAM wParam,LPARAM lParam)
{
  if ( msg == WM_CLOSE )
  {
    PostQuitMessage( 0 );
    return 0 ; 
  }
  
  return DefWindowProc( this->hwnd, msg, wParam, lParam );
}

LRESULT CALLBACK OpenGLWindow::WndProc(HWND hwnd,UINT msg,WPARAM wParam,LPARAM lParam)
{
  OpenGLWindow* self = (OpenGLWindow*)(LONG_PTR)GetWindowLongPtr(hwnd, 0);
 
  if (msg == WM_NCCREATE)
  {
    LPCREATESTRUCT lpcs = reinterpret_cast<LPCREATESTRUCT>(lParam);    
    self = reinterpret_cast<OpenGLWindow*>(lpcs->lpCreateParams);
    if ( self )
    {
      SetWindowLongPtr(hwnd, 0, (LONG)(LONG_PTR)self);
      return DefWindowProc(hwnd, msg, wParam, lParam);
    }
    return FALSE ; 
  } 
  else if ( self ) return self->onMessage( msg, wParam, lParam );    
  else             return DefWindowProc(hwnd, msg, wParam, lParam);
}

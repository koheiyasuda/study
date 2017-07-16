//------------------------------------------------------------------------------
//  OpenGLWindow.h
//
//  You may modify and distribute this source code freely as long as the 
//  following information is included:
//
//  Copyright © Andrew Lim 2005
//  danteshamest@gmail.com
//------------------------------------------------------------------------------

#ifndef GLWindow_h
#define GLWindow_h
#include <windows.h>
#include <gl/gl.h>

/**
 * The OpenGLWindow class is used to create windows that support OpenGL
 * rendering.
 *
 * Author: Andrew Lim
 */
class OpenGLWindow
{
public:

  /**
   *  Exception class for OpenGLWindow.
   */
  class Exception
  {
  public:
    
    /**
     *  Creates an Exception object with the specified error message.
     */
    Exception( LPCTSTR errorMessage=TEXT("") )
    {
      ::wsprintf( this->errorMessage, TEXT("%s"), errorMessage );
    }
    
    /**
     *  Gets the error message.
     */
    LPCTSTR getMessage() const
    {
      return this->errorMessage ; 
    }
    
  private:
    
    TCHAR errorMessage[1024];    
    
  };

  /**
   *  Creates a window with an OpenGL rendering context.
   */
  OpenGLWindow() throw (OpenGLWindow::Exception);
  
  /**
   *  Destroys the window.
   */
  virtual ~OpenGLWindow();  
  
  /**
   *  Overridable function that handles the window's messages.
   */
  virtual LRESULT onMessage(UINT,WPARAM,LPARAM);  
  
  /**
   *  Returns the window handle.
   */
  HWND getHWND() const
  {
    return this->hwnd ; 
  }
  
  /**
   *  Exchanges the front and back buffers.
   */
  void swapBuffers()
  {
    ::SwapBuffers( this->hdc );
  }

private:
  
  /**
   *  This object is not CopyConstructible.
   */
  OpenGLWindow(const OpenGLWindow&);
  
  /**
   *  This object is not Assignable.
   */
  OpenGLWindow& operator=(const OpenGLWindow&);
  
  /**
   *  Window procedure.
   */
  static LRESULT CALLBACK WndProc(HWND,UINT,WPARAM,LPARAM);
  
protected:
  
  HWND  hwnd ; 
  
private: 
  
  HDC   hdc ;
  
  HGLRC hglrc ;  
  
  static int windowCount ;  
};


#endif

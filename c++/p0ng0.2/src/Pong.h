//------------------------------------------------------------------------------
//  Pong.h
//
//  You may modify and distribute this source code freely as long as the 
//  following information is included:
//
//  Copyright © Andrew Lim 2005
//  danteshamest@gmail.com
//------------------------------------------------------------------------------

#ifndef Pong_H
#define Pong_H
#include "OpenGLWindow.h"
#include "Rect.h"

class Pong : public OpenGLWindow
{
public:

  Pong();
  
  int run();
  
private:

  LRESULT onMessage( UINT msg, WPARAM wParam, LPARAM lParam );

  void about();

  void centerInScreen() ;
  
  void computerMove();
  
  void computerMove2();
  
  void computerVersusHuman();
  
  void controls();
  
  void exit();
  
  void humanVersusHuman();
  
  void initMenu() ;

  void paint();
  
  void pause();
  
  void play();
  
  void reset();
  
  void resetBall();
  
  void resetPaddles();
  
  void rotate90Degrees();
  
  void setClientSize( int w, int h );
  
  void update();
  
private:
  
  Rect ball, leftPaddle, rightPaddle ;
  
  int ballVectorX, ballVectorY ;
  
  int gameState ;
  
  int playerCount ;
  
  bool keys[256];
  
  bool rotated ;
  
  HMENU viewMenu, optionsMenu ;

};

#endif

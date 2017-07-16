//------------------------------------------------------------------------------
//  Pong.cpp
//
//  You may modify and distribute this source code freely as long as the 
//  following information is included:
//
//  Copyright © Andrew Lim 2005
//  danteshamest@gmail.com
//------------------------------------------------------------------------------

#include "Pong.h"
#include <cassert>

//------------------------------------------------------------------------------
//  Constants
//------------------------------------------------------------------------------

enum
{   GAME_WIDTH           = 320
  , GAME_HEIGHT          = 240
  , BALL_WIDTH           = 4 
  , BALL_HEIGHT          = 4     
  , BALL_SPEED           = 5
  , PADDLE_WIDTH         = 6 
  , PADDLE_HEIGHT        = 64 
  , BALL_START_X         = (GAME_WIDTH-BALL_WIDTH)/2
  , BALL_START_Y         = (GAME_HEIGHT-BALL_HEIGHT)/2  
  , PADDLE_ARC           = PADDLE_WIDTH/2
  , PADDLE_START_Y       = (GAME_HEIGHT-PADDLE_HEIGHT)/2
  , LEFT_PADDLE_START_X  = PADDLE_WIDTH 
  , RIGHT_PADDLE_START_X = GAME_WIDTH-PADDLE_WIDTH*2
  , PADDLE_SPEED         = 4
  , STATE_RESET          = 0 
  , STATE_PLAYING        = 1 
  , STATE_RIGHTWINS      = 2 
  , STATE_LEFTWINS       = 3 
  , STATE_PAUSED         = 4 
  , MS_PER_GAME_LOOP     = 20
  , TIMER_ID             = 1234
  , IDM_RESET            = 100
  , IDM_PLAY
  , IDM_PAUSE
  , IDM_EXIT
  , IDM_ROTATE90
  , IDM_HVH
  , IDM_CVH
  , IDM_CONTROLS
  , IDM_ABOUT
};

#define GAME_TITLE TEXT("p0ng v0.2")

#define ABOUT_MSG TEXT("p0ng v0.2 - a Pong clone\r\n")\
                  TEXT("Copyright © Andrew Lim 2005\r\n")\
                  TEXT("danteshamest@gmail.com")

#define CONTROLS_MSG TEXT("up arrow\t\tmoves right paddle up or right\r\n")\
                     TEXT("right arrow\tmoves right paddle up or right\r\n")\
                     TEXT("down arrow\tmoves right paddle down or left\r\n")\
                     TEXT("left arrow\t\tmoves right paddle down or left\r\n")\
                     TEXT("W\t\tmoves left paddle up or right\r\n")\
                     TEXT("D\t\tmoves left paddle up or right\r\n")\
                     TEXT("S\t\tmoves left paddle down or left\r\n")\
                     TEXT("A\t\tmoves left paddle down or left\r\n")\
                     

//------------------------------------------------------------------------------
//  Constructors / Destructors
//------------------------------------------------------------------------------

Pong::Pong()
  : ball(BALL_START_X, BALL_START_Y, BALL_WIDTH, BALL_HEIGHT)
  , leftPaddle(LEFT_PADDLE_START_X,PADDLE_START_Y,PADDLE_WIDTH,PADDLE_HEIGHT)
  , rightPaddle(RIGHT_PADDLE_START_X,PADDLE_START_Y,PADDLE_WIDTH,PADDLE_HEIGHT)
  , ballVectorX(BALL_SPEED), ballVectorY(BALL_SPEED)
  , gameState(STATE_RESET)
  , playerCount(1)
  , rotated(false)  
  , viewMenu(NULL)
  , optionsMenu(NULL)
{
  SetTimer( this->hwnd, TIMER_ID, MS_PER_GAME_LOOP, NULL );
  initMenu();
  ZeroMemory( keys, sizeof(keys) );
  SetWindowText( this->hwnd, GAME_TITLE );
  setClientSize( GAME_WIDTH, GAME_WIDTH );
  centerInScreen();
  ShowWindow( this->hwnd, SW_SHOW );
}

//------------------------------------------------------------------------------
//  Member Functions
//------------------------------------------------------------------------------

void Pong::about()
{
  MessageBox( this->hwnd, ABOUT_MSG, "About p0ng", MB_ICONQUESTION );
}

void Pong::centerInScreen()
{
  RECT windowRect ;
  GetWindowRect( this->hwnd, &windowRect );
  
  const int SCREEN_WIDTH  = GetSystemMetrics(SM_CXSCREEN);
  const int SCREEN_HEIGHT = GetSystemMetrics(SM_CYSCREEN);
  const int WINDOW_WIDTH  = windowRect.right - windowRect.left ;
  const int WINDOW_HEIGHT = windowRect.bottom - windowRect.top ;
  const int WINDOW_NEW_X  = (SCREEN_WIDTH - WINDOW_WIDTH)/2 ;
  const int WINDOW_NEW_Y  = (SCREEN_HEIGHT - WINDOW_HEIGHT)/2 ;
  
  SetWindowPos( this->hwnd, NULL, WINDOW_NEW_X, WINDOW_NEW_Y, 0, 0,
                SWP_NOSIZE|SWP_NOZORDER );
}

void Pong::computerMove()
{
  int paddleCenterY = leftPaddle.y + PADDLE_HEIGHT/2 ;
  int ballCenterY = ball.y + BALL_HEIGHT/2 ;
  
  if ( paddleCenterY > ballCenterY )
  {
    if ( leftPaddle.y - PADDLE_SPEED >= 0 )
    {
      leftPaddle.y -= PADDLE_SPEED ;
    }
  }
  
  else if ( paddleCenterY < ballCenterY )
  {
    if ( leftPaddle.y + PADDLE_HEIGHT + PADDLE_SPEED <= GAME_HEIGHT )
    {
      leftPaddle.y += PADDLE_SPEED ;
    }
  }
}

void Pong::computerMove2()
{
  // If top and bottom of paddle are the same distance from the ball, don't move
  // Else If top of paddle is closer to ball than bottom, move upwards.
  // Else move downwards.
  int ballCenterY   = ball.y + BALL_HEIGHT / 2 ;
  int paddleTopY    = leftPaddle.y ;
  int paddleBottomY = leftPaddle.y + PADDLE_HEIGHT ;
  int distTop       = abs( paddleTopY - ballCenterY );
  int distBottom    = abs( paddleBottomY - ballCenterY );
  
  if ( distTop < distBottom )
  {
    leftPaddle.y -= PADDLE_SPEED ; 
  }
  else if ( distTop > distBottom )
  {
    leftPaddle.y += PADDLE_SPEED ;
  }
}

void Pong::computerVersusHuman()
{
  playerCount = 1 ; 
}

void Pong::controls()
{
  MessageBox( this->hwnd, CONTROLS_MSG, TEXT("Controls"), MB_ICONQUESTION ); 
}

void Pong::exit()
{
  PostQuitMessage( 0 ); 
}

void Pong::humanVersusHuman()
{
  playerCount = 2 ;  
}

void Pong::initMenu()
{
  HMENU actionMenu = CreatePopupMenu();
  AppendMenu( actionMenu, MF_STRING, IDM_RESET, TEXT("&Reset\tR") );
  AppendMenu( actionMenu, MF_STRING, IDM_PLAY, TEXT("&Play\tSpace") );
  AppendMenu( actionMenu, MF_STRING, IDM_PAUSE, TEXT("&Pause\tP") );
  AppendMenu( actionMenu, MF_SEPARATOR, 0, 0 );
  AppendMenu( actionMenu, MF_STRING, IDM_EXIT, TEXT("E&xit\tEsc") );
  
  viewMenu = CreatePopupMenu();
  AppendMenu( viewMenu, MF_STRING, IDM_ROTATE90, TEXT("&Rotate 90°") );
  
  optionsMenu = CreatePopupMenu();
  AppendMenu( optionsMenu, MF_STRING, IDM_HVH, TEXT("&Human vs Human") );
  AppendMenu( optionsMenu, MF_STRING, IDM_CVH, TEXT("&Computer vs Human") );
  
  HMENU helpMenu = CreatePopupMenu();
  AppendMenu( helpMenu, MF_STRING, IDM_CONTROLS, TEXT("&Controls") );
  AppendMenu( helpMenu, MF_STRING, IDM_ABOUT, TEXT("&About p0ng") );
  
  HMENU menuBar = CreateMenu() ;
  AppendMenu( menuBar, MF_STRING|MF_POPUP, (UINT_PTR)actionMenu, TEXT("&Actions") );
  AppendMenu( menuBar, MF_STRING|MF_POPUP, (UINT_PTR)viewMenu, TEXT("&View") );
  AppendMenu( menuBar, MF_STRING|MF_POPUP, (UINT_PTR)optionsMenu, TEXT("&Options") );
  AppendMenu( menuBar, MF_STRING|MF_POPUP, (UINT_PTR)helpMenu, TEXT("&Help") );
  
  SetMenu( this->hwnd, menuBar );
}

LRESULT Pong::onMessage( UINT msg, WPARAM wParam, LPARAM lParam )
{
    switch ( msg )
    {
      case WM_CLOSE:
        PostQuitMessage(0);
        return 0 ;   
        
      case WM_COMMAND:
      {
        int id = LOWORD(wParam);
        
        switch ( id )
        {
          case IDM_RESET:    reset();               break;
          case IDM_PLAY:     play();                break;
          case IDM_PAUSE:    pause();               break;
          case IDM_EXIT:     exit();                break;
          case IDM_ROTATE90: rotate90Degrees();     break;
          case IDM_HVH:      humanVersusHuman();    break;
          case IDM_CVH:      computerVersusHuman(); break;
          case IDM_CONTROLS: controls();            break;
          case IDM_ABOUT:    about();               break; 
        }
       
        return 0 ;
      }
      
      case WM_INITMENUPOPUP:
      {
        HMENU menu = (HMENU)wParam ;
        
        if ( menu == optionsMenu )
        {
          if ( playerCount == 1 )
          {
            CheckMenuItem( menu, IDM_HVH, MF_BYCOMMAND|MF_UNCHECKED );
            CheckMenuItem( menu, IDM_CVH, MF_BYCOMMAND|MF_CHECKED );
          }
          else
          {
            CheckMenuItem( menu, IDM_HVH, MF_BYCOMMAND|MF_CHECKED );
            CheckMenuItem( menu, IDM_CVH, MF_BYCOMMAND|MF_UNCHECKED );
          }
        }
        
        else if ( menu == viewMenu )
        {
          MENUITEMINFO mif = { 0 } ;
          mif.cbSize = sizeof( mif ) ;
          mif.fMask  = MIIM_STRING ;    
          
          if ( rotated )
          {
            mif.dwTypeData = TEXT( "Rotate -90°" ) ;
          }
          else
          {
            mif.dwTypeData = TEXT( "Rotate 90°" ) ;
          }
          
          SetMenuItemInfo( viewMenu, IDM_ROTATE90, FALSE, &mif ) ;
        }
        
        return 0 ;
      }
        
      case WM_KEYDOWN:
        keys[wParam] = true ;
        
        switch ( wParam )
        {
          case 'R':       reset(); break;
          case 'P':       pause(); break;
          case VK_SPACE:  play();  break;
          case VK_ESCAPE: exit();  break;
        }        

        return 0 ;
        
      case WM_KEYUP:
        keys[wParam] = false ;
        return 0 ;      
      
      case WM_PAINT:
      {
        PAINTSTRUCT ps;
        BeginPaint(hwnd,&ps); 
        paint();
        EndPaint(hwnd,&ps);
        return 0;
      }
       
      case WM_SIZE:
        // Set up the viewport.
        glViewport( 0, 0, LOWORD(lParam), HIWORD(lParam) );
        glMatrixMode( GL_PROJECTION );
        glLoadIdentity();
    
        // Set up the 2D projection system.
        //glOrtho( 0, LOWORD(lParam),  HIWORD(lParam), 0, -100, 100 );
        glOrtho( 0, GAME_WIDTH, GAME_WIDTH, 0, -100, 100 );
        glMatrixMode( GL_MODELVIEW );         
        glLoadIdentity();            
        paint();
        return 0 ;
        
      case WM_TIMER:
        update();
        paint();
        return 0;
        
      default:
        return DefWindowProc( hwnd, msg, wParam, lParam );    
    }
}

void Pong::paint()
{
  // Clear the screen
  //glClearColor( 0.1, 0.1, 0.1, 0 );
  glClearColor( 0.2, 0.2, 0.2, 0 );
  glClear( GL_COLOR_BUFFER_BIT );  
  
  glLoadIdentity();
  
  if ( !rotated )
  {
    glTranslatef( 0, (GAME_WIDTH-GAME_HEIGHT)/2, 0 );
  }  
  else
  {
    glRotatef( 90, 0, 0, 1 );
    glTranslatef( 0, -GAME_WIDTH, 0 );
    glTranslatef( 0, (GAME_WIDTH-GAME_HEIGHT)/2, 0 );
  }

  //   
  glColor3ub( 0, 0, 0 );
  glRecti( 0, 0, GAME_WIDTH, GAME_HEIGHT );
  
  // Draw the ball
  glColor3ub( 255, 255, 255 );
  glRecti( ball.x, ball.y, ball.x+ball.w, ball.y +ball.h );
  
  // Draw the left paddle
  glRecti( leftPaddle.x, leftPaddle.y, leftPaddle.x+leftPaddle.w, 
           leftPaddle.y +leftPaddle.h );  
           
  // Draw the right paddle
  glRecti( rightPaddle.x, rightPaddle.y, rightPaddle.x+rightPaddle.w, 
           rightPaddle.y +rightPaddle.h );             
  
  // Display drawings on screen
  swapBuffers();
}

void Pong::pause()
{
  gameState = STATE_PAUSED ;
}

void Pong::play()
{
  if ( gameState == STATE_LEFTWINS || gameState == STATE_RIGHTWINS )
  {
    reset() ; 
  }
  
  gameState = STATE_PLAYING ;
}


void Pong::reset()
{
  gameState = STATE_RESET ;
  resetBall();
  resetPaddles(); 
}

void Pong::resetBall()
{
  ball.x = BALL_START_X ;
  ball.y = BALL_START_Y ;
  ball.w = BALL_WIDTH ;
  ball.h = BALL_HEIGHT ;
}
  
void Pong::resetPaddles()
{
  leftPaddle.x  = LEFT_PADDLE_START_X ;
  rightPaddle.x = RIGHT_PADDLE_START_X ;    
  leftPaddle.y  = rightPaddle.y = PADDLE_START_Y ;    
}

void Pong::rotate90Degrees()
{
  rotated = !rotated ; 
}

int Pong::run()
{
  MSG  msg ;    
  while( GetMessage(&msg,0,0,0) > 0 ) {
    TranslateMessage(&msg);
    DispatchMessage(&msg);
  }
  return (int)msg.wParam;  
}

void Pong::setClientSize( int w, int h )
{
  const DWORD dwStyle   = GetWindowLongPtr( this->hwnd, GWL_STYLE );
  const DWORD dwExStyle = GetWindowLongPtr( this->hwnd, GWL_STYLE );
  const BOOL  bMenu     = GetMenu( this->hwnd ) != NULL ;
  
  RECT clientRect = { 0, 0, w, h };  
  AdjustWindowRectEx( &clientRect, dwStyle, bMenu, dwExStyle );
  SetWindowPos( this->hwnd, 0, 0, 0, clientRect.right-clientRect.left,
                clientRect.bottom-clientRect.top, SWP_NOMOVE|SWP_NOZORDER );
}

void Pong::update()
{
  // Don't update if game is not in playing state.
  if ( gameState != STATE_PLAYING )
    return ;  
  
  //  Move right paddle.
  if ( keys[VK_UP] || keys[VK_RIGHT] )
    if ( rightPaddle.y - PADDLE_SPEED >= 0 )
      rightPaddle.y -= PADDLE_SPEED ;  
  if ( keys[VK_DOWN] || keys[VK_LEFT])
    if ( rightPaddle.y + PADDLE_HEIGHT + PADDLE_SPEED <= GAME_HEIGHT )
      rightPaddle.y += PADDLE_SPEED ;   
      
  //  Move left paddle.
  if ( playerCount == 1 )
  {
    computerMove();
  }
  else
  {
    if ( keys[(int)'W'] || keys[(int)'D'] )
      if ( leftPaddle.y - PADDLE_SPEED >= 0 )
        leftPaddle.y -= PADDLE_SPEED ;
    if ( keys[(int)'S'] || keys[(int)'A'])
      if ( leftPaddle.y + PADDLE_HEIGHT + PADDLE_SPEED <= GAME_HEIGHT )
        leftPaddle.y += PADDLE_SPEED ;      
  }
  
  // Save current ball y-position.
  const int oldBallY = ball.y ;
      
  // Move ball.
  ball.x += ballVectorX ;
  ball.y += ballVectorY ;
  
  // Check if ball + paddles collide.
  if ( ball.intersects( leftPaddle ) )           // ball + left paddle
  {
    ball.x      = leftPaddle.x + PADDLE_WIDTH ;  // put ball at paddle edge
    ball.y      = oldBallY ;                     // undo ball vertical movement
    ballVectorX = -ballVectorX ;                 // reverse horizontal direction
  }
  else if (ball.intersects( rightPaddle ))       // ball + right paddle
  {
    ball.x      = rightPaddle.x - BALL_WIDTH;    // put ball at paddle edge
    ball.y      = oldBallY ;                     // undo ball vertical movement
    ballVectorX = -ballVectorX ;                 // reverse horizontal direction
  }    
  
  // Check if ball + walls collide.
  else if ( ball.x < 0 )                         // ball + left wall
  {
    ball.x    = 0 ;                              // put ball at left wall edge
    ball.y    = oldBallY ;                       // undo ball vertical movement
    gameState = STATE_RIGHTWINS ;                // right player wins
  }    
  else if ( ball.x > GAME_WIDTH - BALL_WIDTH )   // ball + right wall
  {
    ball.x    = GAME_WIDTH - BALL_WIDTH ;        // put ball at right wall edge
    ball.y    = oldBallY ;                       // undo ball vertical movement                   
    gameState = STATE_LEFTWINS ;                 // left player wins
  }
  else if ( ball.y < 0 )                         // ball + top wall
  { 
    ball.y      = 0 ;                            // put ball at top wall edge
    ballVectorY = -ballVectorY ;                 // reverse vertical direction
  }      
  else if ( ball.y > GAME_HEIGHT - BALL_HEIGHT ) // ball + bottom wall
  {
    ball.y      = GAME_HEIGHT - BALL_HEIGHT ;    // put ball at bottom wall edge
    ballVectorY = -ballVectorY ;                 // reverse vertical direction
  }      
}

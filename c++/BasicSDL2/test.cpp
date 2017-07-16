#include <SDL2/SDL.h>
#include <cstdio>
#include <map>

enum
  {
    DISPLAY_WIDTH = 480,
    DISPLAY_HEIGHT = 320,
    UPDATE_INTERVAL = 1000/60,
    HERO_SPEED = 2
  };

class Sprite 
{
public:
  int x, y;
  Sprite() :x(0), y(0) {}
};

class Game
{
public:
  Game();
  ~Game();
  void start();
  void stop();
  void draw();
  void fillRect(SDL_Rect* rc, int r, int g, int b);
  void fpsChanged( int fps);
  void onQuit();
  void onKeyDown( SDL_Event* event );
  void onKeyUp( SDL_Event* event );
  void run();
  void update();
private:
  std::map<int, int> keys;
  int frameSkip;
  int running;
  SDL_Window* window;
  SDL_Renderer* renderer;
  Sprite hero;
};

Game::Game():frameSkip(0),running(0),window(NULL),renderer(NULL)
{
}

Game::~Game()
{
  this->stop();
}

void Game::start()
{
  if (SDL_Init(SDL_INIT_EVERYTHING))
    {
      return;
    }
  if (SDL_CreateWindowAndRenderer(DISPLAY_WIDTH, DISPLAY_HEIGHT, SDL_WINDOW_SHOWN, &window, &renderer))
    {
      return;
    }
  this->running = 1;
  run();
}

void Game::stop()
{
  if(renderer != NULL)
    {
      SDL_DestroyRenderer(renderer);
      renderer = NULL;
    }
  if(window != NULL)
    {
      SDL_DestroyWindow(window);
      window = NULL;
    }
  SDL_Quit();
}

void Game::fillRect(SDL_Rect* rc, int r, int g, int b)
{
  SDL_SetRenderDrawColor(renderer, r, g, b, SDL_ALPHA_OPAQUE);
  SDL_RenderFillRect(renderer, rc);
}

void Game::fpsChanged( int fps)
{
  char szFps[ 128 ];
  sprintf( szFps, "%s: %d FPS", "SDL2 Base C++ - Use Arrow Keys to Move", fps);
  SDL_SetWindowTitle(window, szFps);
}




int main(int argc, char** argv)
{
  Game game;

  game.start();

  return 0;
}


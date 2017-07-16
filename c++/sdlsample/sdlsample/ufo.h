void imageLoadUFO();
void ufo_src(Sint16 posX,Sint16 posY);
void ufo_init();
void hitChek_ufo();
void ufo_main();



extern SDL_Surface *ufoSur;//画像用Surface
extern SDL_Texture *ufoTex;//画像用Texture
extern SDL_Rect ufosrc,ufodrw;//描画用
//
//  others.h
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/07.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//

extern int games;
extern SDL_Window *mWIN;//メインウィンドウ
extern SDL_Renderer *bkRen;//背景用レンダラー
extern SDL_Surface *imgSur;//画像用Surface
extern SDL_Texture *imgTex;//画像用Texture
extern SDL_Rect src,drw;//描画用

void startUp();
int quits();
void frames();
void dr_Title(Sint16 posX, Sint16 posY);
void dr_End(Sint16 posX, Sint16 posY);
void inputEngine();
void startGame();
void backTitle();
void backGraund();


typedef struct
{
    //32bit符号なし整数型
    Uint32 now,//現在時間
            wit,//待ち時間
            lev;//経過時間
}timers;
extern timers timer;

typedef struct
{
    Uint32 l,//左矢印
            r,//右矢印
            z,//zキー
            time;//zキーの押された時間
}inputKeys;
extern inputKeys keys;

#define starMax 8
typedef struct{
    Sint16 flg[starMax],
    posX[starMax],
    posY[starMax];

}backStars;
extern backStars starA,starB,starC;

void stars_reset();
void stars();

void bg_gra();


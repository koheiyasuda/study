//
//  others.c
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/07.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//

#include "headers.h"

int games;
SDL_Window *mWIN;
SDL_Renderer *bkRen;//背景用レンダラー
SDL_Surface *imgSur;//画像用サーフェス
SDL_Texture *imgTex;//画像用テクスチャ
SDL_Rect src,dest;//描画用
timers timer;
inputKeys keys;


void startUp()
{
    SDL_Init(SDL_INIT_VIDEO);

    mWIN = SDL_CreateWindow("invader game", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 300, 400, 0);

    bkRen = SDL_CreateRenderer(mWIN, -1, 0);//2Dレンダリングコンテキスト生成
    games = 0;

}

int quits()
{
    SDL_Event Qevnts;
    if (SDL_PollEvent(&Qevnts)) {
        switch (Qevnts.type) {
            case SDL_QUIT:
                return 0;
                break;

            case SDL_KEYDOWN:
                if (Qevnts.key.keysym.sym==SDLK_ESCAPE || Qevnts.key.keysym.sym==SDLK_q) {
                    return 0;
                }
                break;
                
            default:
                break;
        }
    }
    return 1;
}

//フレームレート
void frames()
{
    timer.now = SDL_GetTicks();//SDLが初期化されてから経過した時間をmsで得る
    timer.wit = timer.now - timer.lev;//待ち時間を計算

    if (timer.wit < 16) {
        SDL_Delay(16-timer.wit);//1秒間に60回画面更新なので、16ms以下ならCPUを休ませる
    }
    timer.lev = SDL_GetTicks();//経過時間を更新
    SDL_UpdateWindowSurface(mWIN);//画面を更新

}


//描画関数
void dr_Title(Sint16 posX, Sint16 posY)
{
    //背景
    SDL_SetRenderDrawColor(bkRen, 255, 0, 0, 255);//描画の色を選択、rgbα(α255で塗りつぶし)
    SDL_RenderClear(bkRen);

    //前景
    imgSur = IMG_Load("start_end.gif");
    if (!imgSur) {
        cout << "画像がありません。" << endl;
        SDL_Quit();
    }
    imgTex = SDL_CreateTextureFromSurface(bkRen, imgSur);//テクスチャに変換
    SDL_FreeSurface(imgSur);//テクスチャが得られたのでサーフェスを解放

    src.x = 0;
    src.y = 0;
    src.w = 100;
    src.h = 50;
    dest.x = posX;
    dest.y = posY;
    dest.w = 100;
    dest.h = 50;

    SDL_RenderCopy(bkRen, imgTex, &src, &dest);
    SDL_RenderPresent(bkRen);

}

//ゲームオーバー画面
void dr_End(Sint16 posX, Sint16 posY)
{
    //背景
    SDL_SetRenderDrawColor(bkRen, 0, 255, 0, 255);//描画の色を選択、rgbα(α255で塗りつぶし)
    SDL_RenderClear(bkRen);//クリア

    //前景
    imgSur = IMG_Load("start_end.gif");
    if (!imgSur) {
        SDL_Quit();
    }
    imgTex = SDL_CreateTextureFromSurface(bkRen, imgSur);//テクスチャに変換
    SDL_FreeSurface(imgSur);//テクスチャが得られたのでサーフェスを解放

    src.x = 0;
    src.y = 50;
    src.w = 100;
    src.h = 50;
    dest.x = posX;
    dest.y = posY;
    dest.w = 100;
    dest.h = 50;

    SDL_RenderCopy(bkRen, imgTex, &src, &dest);
    SDL_RenderPresent(bkRen);
    
}

//キー制御
void inputEngine()
{
    const Uint8 *state = SDL_GetKeyboardState(NULL);

    if (state[SDL_SCANCODE_LEFT]) {
        keys.l = 1;
        cout << "left is pressed." << endl;
    }else keys.l = 0;

    if (state[SDL_SCANCODE_RIGHT]) {
        keys.r = 1;
        cout << "right is pressed." << endl;
    }else keys.r = 0;

    if (timer.now - keys.time > 1000) {
        if (state[SDL_SCANCODE_Z]) {
            keys.z = 1;
            cout << "z is pressed." << endl;
            keys.time = timer.now;
        }
    }
    else {
        keys.z = 0;
        if (!state[SDL_SCANCODE_Z]) {
            keys.time = 0;
        }
    }
}

void startGame()
{
    if (keys.z == 1) {
        games = 1;//zキーが押されたらゲームへ
        resets();//いろいろリセット
    }
}

void backTitle()
{
    if(timer.now-otr.time>1000*1.0){
        if(keys.z==1){
            games=0;//Ｚキーが押されたらゲームへ
        }
    }
}




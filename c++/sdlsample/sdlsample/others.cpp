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
backStars starA,starB,starC;


void startUp()
{
    SDL_Init(SDL_INIT_VIDEO);

    mWIN = SDL_CreateWindow("invader game", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 300, 400, 0);

    bkRen = SDL_CreateRenderer(mWIN, -1, 0);//2Dレンダリングコンテキスト生成
    games = 0;
    loadSounds();//音ロード
    imageLoadUFO();//UFO読み込み
    imageLoadScore();//得点画像ロード

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

void backGraund(){

    if(games!=0)
    {
        bg_gra();//グラデ
        stars();//バック地の星
    }

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


//------------------------------------------------------------------------------バック地の星の配置
void stars_reset()
{
    int lop;
    for(lop=0;lop<starMax;lop++)
    {
        starA.flg[lop]=1;
        starA.posX[lop]=rand()%300;
        starA.posY[lop]=rand()%400;

        starB.flg[lop]=1;
        starB.posX[lop]=rand()%300;
        starB.posY[lop]=rand()%400;

        starC.flg[lop]=1;
        starC.posX[lop]=rand()%300;
        starC.posY[lop]=rand()%400;
    }
}

//------------------------------------------------------------------------------バック地の星の描画
void stars()
{
    SDL_Rect star;
    star.w=1; star.h=1;//大きさ1ドット

    int lop;
    for(lop=0;lop<starMax;lop++)
    {
        //青い星（以下同一）
        if(starA.flg[lop]==0)
        {
            starA.flg[lop]=1;
            starA.posX[lop]=rand()%300;
            starA.posY[lop]=0;
        }
        else if(starA.flg[lop]==1)
        {
            starA.posY[lop]+=1;//移動量計算し代入
            star.x=starA.posX[lop]; star.y=starA.posY[lop];
            //描画
            SDL_SetRenderDrawColor(bkRen, 0, 126, 255, 255);
            SDL_RenderFillRect(bkRen, &star);
            //フラグ下げる
            if(starA.posY[lop]>400)starA.flg[lop]=0;
        }

        if(starB.flg[lop]==0)//白い星
        {
            starB.flg[lop]=1;
            starB.posX[lop]=rand()%300; starB.posY[lop]=0;
        }
        else if(starB.flg[lop]==1)
        {
            starB.posY[lop]+=2;
            star.x=starB.posX[lop]; star.y=starB.posY[lop];
            SDL_SetRenderDrawColor(bkRen, 255, 255, 255, 255);
            SDL_RenderFillRect(bkRen, &star);
            if(starB.posY[lop]>400)starB.flg[lop]=0;
        }

        if(starC.flg[lop]==0)//緑の星
        {
            starC.flg[lop]=1;
            starC.posX[lop]=rand()%300; starC.posY[lop]=0;
        }
        else if(starC.flg[lop]==1)
        {
            starC.posY[lop]+=3;
            star.x=starC.posX[lop]; star.y=starC.posY[lop];
            SDL_SetRenderDrawColor(bkRen, 0, 255, 0, 255);
            SDL_RenderFillRect(bkRen, &star);
            if(starC.posY[lop]>400)starC.flg[lop]=0;
        }
    }
}
//------------------------------------------------------------------------------バック地のグラデーション
void bg_gra()
{
    Uint8 B=0;//色用
    
    SDL_Rect gra;//矩形領域設定
    gra.x=0; gra.y=0;
    gra.w=300; gra.h=4;
    
    int lop;
    for(lop=0; lop<100; lop++)//描画
    {
        //塗り潰し
        SDL_SetRenderDrawColor(bkRen, 0, 0, B, 255);
        SDL_RenderFillRect(bkRen, &gra);
        gra.y+=4;//Ｙ軸調整
        B++;//色数値増加
    }
}




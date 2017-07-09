//
//  main.cpp
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/07.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//

#include <SDL2/SDL.h>
#include <iostream>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_mixer.h>


using namespace std;

int main(int, char ** const)
{
    SDL_Init(SDL_INIT_VIDEO); //SDL2の初期化
    
    //アプリケーションウィンドウを生成
    SDL_Window* window = SDL_CreateWindow("Hey",SDL_WINDOWPOS_CENTERED,SDL_WINDOWPOS_CENTERED,800,600,0);//タイトル、X座標初期値、Y座標初期値、幅、高さ、フラグ
    //ウィンドウの生成に成功したかチェック
    if (window == nullptr) {
        cout << "SDL_CreateWindow Error:" << SDL_GetError() << endl;
        SDL_Quit();
        return 1;
    }
    //ここでウィンドウが開く
    
    //ウィンドウの2Dレンダリングコンテキストを生成（描画処理のためのデータの集合体を生成)
    SDL_Renderer* render = SDL_CreateRenderer(window, -1, 0);//windowポインタ、-1で初期化、SDL_RendererFlagsの論理和
    
    // SDLイベント処理
    SDL_Event ev;
    while(true){
        //描画操作で使用する色を設定
        SDL_SetRenderDrawColor(render, 255, 255, 255, 255);// レンダリングコンテキスト、赤、緑、青、αチャネル
        SDL_RenderClear(render);// 選択した色で画面を消去する
        while(SDL_PollEvent(&ev))//未処理のイベントがある場合は1(真),ない場合は0(偽)
        {
            if (ev.type == SDL_QUIT)// ユーザが終了を要求した
                return 0;
        }
        SDL_SetRenderDrawColor(render, 255, 0, 0, 255);//描画操作で使用する色を設定
        SDL_RenderDrawLine(render,10, 10, 400, 400);//レンダリング対象に直線を描く(レンダリングコンテキスト、始点x、始点y、終点x、終点y)
        SDL_RenderPresent(render);//レンダリング結果を画面に表示する
    }

    
    return 0;
}
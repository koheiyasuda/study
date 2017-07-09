//
//  main.cpp
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/07.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//

#include "headers.h"

int main(int argc, char *argv[])
{
    startUp();

    while (quits()!=0) {


        inputEngine();//キー操作


        switch (games) {
            case 0://タイトル画面
                dr_Title(100,100);
                startGame();
                
                break;

            case 1://ゲーム画面
                chara();
                break;

            case 2://ゲームオーバー画面
                dr_End(100, 100);
                backTitle();
                break;
                
            default:
                break;
        }
        frames();
    }


    SDL_DestroyTexture(imgTex);
    SDL_DestroyRenderer(bkRen);
    SDL_DestroyWindow(mWIN);

    SDL_Quit();
    return 0;
}

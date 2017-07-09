//
//  efect.cpp
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/09.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//

#include "headers.h"
//Mix_Chunk *se[2];//効果音
//Mix_Music *BGM[0];//BGM
//efectBaku eft,eft2;//爆発エフェクト
//soundsVal snd;//BGM用

//------------------------------------------------------------------------------自弾と敵機の当たり判定
void hitChek_meB(int lop)
{
    int blt;//表示中の自弾を探す
    for(blt=0;blt<bltMax;blt++){
        if(mes.flgB[blt]==1)
        {
            SDL_Rect R1,R2;
            //敵の座標と大きさ設定
            R1.x=ene[lop].posX;	R1.y=ene[lop].posY; R1.w=20; R1.h=20;
            //自弾の座標と大きさ設定
            R2.x=mes.bltX[blt]; R2.y=mes.bltY[blt]; R2.w=2;	R2.h=24;

            //当り判定、当たってたらフラグ下げる
            if(	((R1.x)<(R2.x+R2.w))	&& ((R2.x)<(R1.x+R1.w))&&((R1.y)<(R2.y+R2.h))	&& ((R2.y)<(R1.y+R1.h))	)
            {
                ene[lop].flg=0;//敵フラグ
                mes.flgB[blt]=0;//自弾フラグ
                //playSE(1);//効果音
                //efect_init(ene[lop].posX,ene[lop].posY,ene[lop].spd);//爆発エフェクト初期化
                //sco.iti+=3;//得点+3
                break;
            }
        }
    }
}
//------------------------------------------------------------------------------自機と敵機の当たり判定
void hitChek_eneM(int lop)
{
    SDL_Rect R1,R2;
    //敵の座標と大きさ設定
    R1.x=ene[lop].posX;	R1.y=ene[lop].posY; R1.w=20; R1.h=20;
    //自機の座標と大きさ設定
    R2.x=mes.posX+8; R2.y=mes.posY+8; R2.w=4;	R2.h=8;

    //当り判定、当たってたらフラグ下げる
    if(	((R1.x)<(R2.x+R2.w))	&& ((R2.x)<(R1.x+R1.w))&&((R1.y)<(R2.y+R2.h))	&& ((R2.y)<(R1.y+R1.h))	)
    {
        games=2;//ゲームオーバー画面へ
        otr.time=timer.now;//接触時間取得
        //playSE(1);//効果音
    }
}
//------------------------------------------------------------------------------敵弾と自機の当たり判定
void hitChek_Blt(int lop)
{
    SDL_Rect R1,R2;
    //敵弾の座標と大きさ設定
    R1.x=tama[lop].posX;	R1.y=tama[lop].posY; R1.w=4; R1.h=12;
    //自機の座標と大きさ設定
    R2.x=mes.posX+8; R2.y=mes.posY+8; R2.w=4;	R2.h=8;

    //当り判定、当たってたらフラグ下げる
    if(	((R1.x)<(R2.x+R2.w))	&& ((R2.x)<(R1.x+R1.w))&&((R1.y)<(R2.y+R2.h))	&& ((R2.y)<(R1.y+R1.h))	)
    {
        games=2;//ゲームオーバー画面へ
        otr.time=timer.now;//接触時間取得
        //playSE(1);//効果音
    }
}
//-------------------------------------------------------------------音ファイル読み込み

//
//  chara.cpp
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/08.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//

#include "headers.h"
#define KUKEI 4
ziki mes;
enemys ene[eneMax];
otherVal otr;
tamas tama[eBltMax];



void me_src(Sint16 posX, Sint16 posY)
{
    SDL_Rect rct;//描画矩形用

    rct.x = posX + KUKEI*2;
    rct.y = posY + KUKEI*0;
    rct.w = KUKEI*1;
    rct.h = KUKEI*2;
    SDL_SetRenderDrawColor(bkRen, 255, 255, 255, 255);
    SDL_RenderFillRect(bkRen, &rct);

    rct.x = posX + KUKEI*1;
    rct.y = posY + KUKEI*2;
    rct.w = KUKEI*3;
    rct.h = KUKEI*2;
    SDL_RenderFillRect(bkRen, &rct);

    rct.x = posX + KUKEI*0;
    rct.y = posY + KUKEI*4;
    rct.w = KUKEI*5;
    rct.h = KUKEI*1;
    SDL_RenderFillRect(bkRen, &rct);

    rct.x = posX + KUKEI*2;
    rct.y = posY + KUKEI*2;
    rct.w = KUKEI*1;
    rct.h = KUKEI*2;
    SDL_SetRenderDrawColor(bkRen, 0, 0, 255, 255);
    SDL_RenderFillRect(bkRen, &rct);

}

void me_srcB(Sint16 posX,Sint16 posY){
    SDL_Rect rct;
    rct.x = posX;
    rct.y=posY;
    rct.w=KUKEI/2;
    rct.h=KUKEI*4;
    SDL_SetRenderDrawColor(bkRen, 0, 255, 0, 255);
    SDL_RenderFillRect(bkRen, &rct);

}

void me_move()
{
    if (keys.l == 1) {
        mes.posX -= 2;//自機移動計算
    }
    if (keys.r == 1) {
        mes.posX += 2;
    }

    if (mes.posX <= 0) {
        mes.posX = 0;//画面からはみ出さないように
    }else if (mes.posX >= 280){
        mes.posX = 280;
    }
}

void me_bullet()
{
    if (keys.z == 1) {
        for (int lop = 0; lop < bltMax; lop++) {
            if (mes.flgB[lop] == 0) {

                mes.flgB[lop] = 1;
                mes.bltX[lop] = mes.posX + 9;
                mes.bltY[lop] = mes.posY;
                playSE(0);
                break;
            }
        }
    }

    if (keys.z == 0){
        for (int lop = 0; lop < bltMax; lop++) {
            if (mes.flgB[lop] == 1) {
                mes.bltY[lop]-=8;
                me_srcB(mes.bltX[lop], mes.bltY[lop]);//弾描画
                if (mes.bltY[lop] < 0) {
                    mes.flgB[lop] = 0;//フラグ下げる
                }
            }

        }
    }

}

void me_main(){
    me_move();//移動
    me_src(mes.posX, mes.posY);//自機描画
    me_bullet();//弾
}

void ene_src(Sint16 ani,Sint16 posX, Sint16 posY)
{
    SDL_Rect rct;//描画矩形用

    //1枚目
    if (ani < 10) {
        rct.x=posX+KUKEI*1; rct.y=posY+KUKEI*0;//白1-1
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_SetRenderDrawColor(bkRen, 255, 255, 255, 255);
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*3; rct.y=posY+KUKEI*0;//白1-2
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*0; rct.y=posY+KUKEI*1;//白1-3
        rct.w=KUKEI*5; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*0; rct.y=posY+KUKEI*3;//白1-4
        rct.w=KUKEI*1; rct.h=KUKEI*2;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*2; rct.y=posY+KUKEI*2;//白1-5
        rct.w=KUKEI*1; rct.h=KUKEI*2;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*4; rct.y=posY+KUKEI*3;//白1-6
        rct.w=KUKEI*1; rct.h=KUKEI*2;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*2; rct.y=posY+KUKEI*1;//赤1-1
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_SetRenderDrawColor(bkRen, 255, 0, 0, 255);
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*1; rct.y=posY+KUKEI*2;//赤1-2
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);
        
        rct.x=posX+KUKEI*3; rct.y=posY+KUKEI*2;//赤1-3
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);
    }
    else {//2枚目
        rct.x=posX+KUKEI*0; rct.y=posY+KUKEI*0;//白2-1
        rct.w=KUKEI*2; rct.h=KUKEI*1;
        SDL_SetRenderDrawColor(bkRen, 255, 255, 255, 255);
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*3; rct.y=posY+KUKEI*0;//白2-2
        rct.w=KUKEI*2; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*1; rct.y=posY+KUKEI*1;//白2-3
        rct.w=KUKEI*3; rct.h=KUKEI*2;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*0; rct.y=posY+KUKEI*3;//白2-4
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*4; rct.y=posY+KUKEI*3;//白2-5
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*1; rct.y=posY+KUKEI*4;//白2-6
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*3; rct.y=posY+KUKEI*4;//白2-7
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*2; rct.y=posY+KUKEI*1;//赤2-1
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_SetRenderDrawColor(bkRen, 255, 0, 0, 255);
        SDL_RenderFillRect(bkRen, &rct);

        rct.x=posX+KUKEI*1; rct.y=posY+KUKEI*2;//赤2-2
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);
        
        rct.x=posX+KUKEI*3; rct.y=posY+KUKEI*2;//赤2-3
        rct.w=KUKEI*1; rct.h=KUKEI*1;
        SDL_RenderFillRect(bkRen, &rct);

    }
}


void ene_zouka()
{
    if (otr.eNum < eneMax) {//敵の数を確認
        if (timer.now - otr.time > 8000) {
            otr.eNum += 1;//敵数増加
            otr.time = timer.now;//時間リセット
        }
    }
}

void ene_main()
{
    ene_zouka();//敵増加チェック

    for (int lop = 0; lop < otr.eNum; lop++) {//敵の初期化
        if (ene[lop].flg == 0) {
            ene[lop].flg = 1;//出現フラグ
            ene[lop].posX = rand()%300;
            ene[lop].posY = -20;
            ene[lop].cntA = 0;//アニメカウンタ
            ene[lop].cntB = rand()%360;//弾カウンタ
            ene[lop].cntM = 0;//移動用カウンタ
            if (rand()%2 == 0) {
                ene[lop].spd = 1 + rand()%3;//移動スピード
            }
            else{
                ene[lop].spd =-(1+rand()%3);
            }
        }
    }

    for (int lop = 0; lop < eneMax; lop++) {//敵のメイン処理
        if (ene[lop].flg == 1) {//出現してる敵の処理
            //移動量計算
            ene[lop].posX += ene[lop].spd;
            ene[lop].posY += 1;

            //X軸位置修正
            if (ene[lop].posX < -20) {
                ene[lop].posX = 300;
            }else if (ene[lop].posX > 300){
                ene[lop].posX = 20;
            }

            //アニメーション計算
            if (ene[lop].cntA < 20) {
                ene[lop].cntA++;
            }else {
                ene[lop].cntA = 0;
            }

            //弾発射チェック
            if(ene[lop].cntB!=-1){
                if(ene[lop].cntB!=0){
                    ene[lop].cntB--;
                }
                else
                {
                    blt_init(ene[lop].posX,ene[lop].posY);//弾初期化
                    ene[lop].cntB=-1;
                }
            }

            //移動パターン計算
            if (ene[lop].cntM < 60) {
                ene[lop].cntM++;
            }else {
                ene[lop].cntM = 0;
                //移動スピード変更
                if (rand()%2 == 0) {
                    ene[lop].spd = 1 + rand()%3;
                }else{
                    ene[lop].spd =-(1+rand()%3);
                }
            }

            ene_src(ene[lop].cntA, ene[lop].posX, ene[lop].posY);//敵を描画

            //当たり判定
            hitChek_meB(lop);//自弾と敵
            hitChek_eneM(lop);//自機と敵

            //一番下まで来たらフラグ下げる
            if (ene[lop].posY > 400) {
                ene[lop].flg = 0;
            }

        }
    }
    
}


//------------------------------------------------------------------------------弾の表示元
void blt_src(Sint16 posX,Sint16 posY)
{
    SDL_Rect rct;//描画矩形用

    rct.x=posX+1; rct.y=posY+KUKEI*2; rct.w=KUKEI*1; rct.h=KUKEI/2;
    SDL_SetRenderDrawColor(bkRen, 255, 255, 255, 255);
    SDL_RenderFillRect(bkRen, &rct);


    rct.x=posX+2; rct.y=posY; rct.w=KUKEI/2; rct.h=KUKEI*3;
    SDL_SetRenderDrawColor(bkRen, 255, 255, 0, 255);
    SDL_RenderFillRect(bkRen, &rct);

}
//-------------------------------------------------------------------------弾の初期化
void blt_init(Sint16 posX,Sint16 posY)
{
    for(int lop=0; lop<eBltMax; lop++)
        if(tama[lop].flg==0)
        {
            tama[lop].flg=1;//フラグ立てる
            tama[lop].posX=posX+8; tama[lop].posY=posY;//座標代入
            tama[lop].spd=3+rand()%3;//スピード決める
            break;//ループ抜ける
        }
}

//------------------------------------------------------------------------弾のまとめ
void blt_main()
{
    for(int lop=0; lop<eBltMax; lop++)
        if(tama[lop].flg==1)
        {
            //移動量計算
            tama[lop].posY+=tama[lop].spd;
            //弾を描画
            blt_src(tama[lop].posX,tama[lop].posY);
            //当たり判定
            hitChek_Blt(lop);
            //画面から出たら消去
            if(tama[lop].posY>400)tama[lop].flg=0;
        }
}









void resets()
{
    srand( (unsigned)time( NULL ) );//乱数リセット
    mes.posX=140; mes.posY=370;//自機の初期座標
    int lop;
    for(lop=0;		lop<bltMax;		lop++) mes.flgB[lop]=0;//弾フラグ下げる
    for(lop=0;		lop<eneMax;		lop++) ene[lop].flg=0;//敵フラグ下げる
    otr.eNum=1;//敵の最大数の初期値
    otr.time=timer.now;//敵増加の為の時間リセット
    for(lop=0;		lop<eBltMax;		lop++) tama[lop].flg=0;//弾フラグ下げる
    stars_reset();//バック地の星を配置する
    for(lop=0;		lop<efcMax;		lop++)//爆発エフェクト
    {
        eft.flg[lop]=0; eft2.flg[lop]=0;
    }
    ufo.flg=0; ufo.cntB=0;//UFO
    score_rest();//点数
    BGM_reset();//BGM
}



void chara()
{
    //背景
    SDL_SetRenderDrawColor(bkRen, 0, 0, 0, 255);//描画の色を選択、rgbα(α255で塗りつぶし)
    SDL_RenderClear(bkRen);

    me_main();//自機
    ene_main();//敵機
    ufo_main();//UFO
    blt_main();//弾
    efect_main();//爆発エフェクト
    efect_main2();
    BGM_fade();//BGM

    SDL_RenderPresent(bkRen);
}
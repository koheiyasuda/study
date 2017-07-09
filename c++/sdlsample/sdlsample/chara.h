//
//  chara.hpp
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/08.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//
#define bltMax 6

typedef struct{//自機用の変数
    Sint16 posX,//自機の位置
            posY,//自機の位置
            flgB[bltMax],//弾のフラグ
            bltX[bltMax],//弾のx座標
            bltY[bltMax];//弾のy座標
}ziki;
extern ziki mes;


#define eneMax 32
typedef struct{
    Sint16 flg,//出現フラグ
            posX,//敵の位置X
            posY,//敵の位置Y
            cntA,//アニメ用のカウンタ
            cntB,//弾発射用のカウンタ
            cntM,//移動用のカウンタ
            spd;//移動スピード

}enemys;
extern enemys ene[eneMax],ufo;

typedef struct{
    Uint32 eNum,//敵出現の最大値
            time;//敵増加のタイミング
}otherVal;
extern otherVal otr;

#define eBltMax 64
typedef struct{
    Sint16 flg,
            posX,
            posY,
            spd;
}tamas;
extern tamas tama[eBltMax];

#define starMax 8
typedef struct{
    Sint16 flg[starMax],
                posX[starMax],
    posY[starMax];

}backStars;
extern backStars starA,starB,starC;

void me_src(Sint16 posX, Sint16 posY);
void me_srcB(Sint16 posX,Sint16 posY);
void me_move();
void me_bullet();
void me_main();

void ene_src(Sint16 ani, Sint16 posX, Sint16 posY);
void ene_zouka();
void ene_main();

void blt_init(Sint16 posX,Sint16 posY);
void blt_src(Sint16 posX,Sint16 posY);
void blt_main();


void resets();
void chara();



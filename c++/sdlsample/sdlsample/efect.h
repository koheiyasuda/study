//
//  efect.hpp
//  sdlsample
//
//  Created by KoheiYasuda on 2017/07/09.
//  Copyright © 2017年 koheiyasuda. All rights reserved.
//

#ifndef efect_hpp
#define efect_hpp

#define efcMax 64 //エフェクトの最大数
typedef struct//爆発エフェクトの変数
{
    Sint16	flg[efcMax],//フラグ＆カウンタ
				posX[efcMax],//敵機の位置Ｘ
				posY[efcMax],//敵機の位置Ｙ
				cnt[efcMax],//敵機表示用
				spd[efcMax];//移動スピード
}efectBaku;
extern efectBaku eft,eft2;

typedef struct//ＢＧＭの変数
{
    int	flg,//フラグ
    cnt,//カウンタ
    num,//演奏中BGMの番号
    vol;//ボリューム
}soundsVal;
extern soundsVal snd;


void hitChek_meB(int lop);
void hitChek_eneM(int lop);
void hitChek_Blt(int lop);
void loadSounds();
void playSE(int num);
void efect_init(Sint16 posX,Sint16 posY,Sint16 spd);
void efect_main();
void efect_init2(Sint16 posX,Sint16 posY);
void efect_main2();

void BGM_reset();
void BGM_play(int num);
void BGM_fade();

#endif /* efect_hpp */

#include "headers.h"
Mix_Chunk *se[2];//効果音
Mix_Music *BGM[0];//BGM
efectBaku eft,eft2;//爆発エフェクト
soundsVal snd;//BGM用

//------------------------------------------------------------------------------自弾と敵機の当たり判定
void hitChek_meB(int lop)
{
int blt;//表示中の自弾を探す
for(blt=0;blt<bltMax;blt++)
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
		playSE(1);//効果音
		efect_init(ene[lop].posX,ene[lop].posY,ene[lop].spd);//爆発エフェクト初期化
		sco.iti+=3;//得点+3
		break;
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
	playSE(1);//効果音
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
	playSE(1);//効果音
	}
}
//------------------------------------------------------------------------------音ファイル読み込み
void loadSounds()
{
//設定
if(Mix_OpenAudio(44100,MIX_DEFAULT_FORMAT,2,1024)==-1)SDL_Quit();
//読み込み
se[0]=Mix_LoadWAV("inbeida.app/Contents/Resources/se0.aif");
se[1]=Mix_LoadWAV("inbeida.app/Contents/Resources/se1.aif");
//BGM
BGM[0]=Mix_LoadMUS("inbeida.app/Contents/Resources/BGM0.ogg");
BGM[1]=Mix_LoadMUS("inbeida.app/Contents/Resources/BGM1.ogg");
int lop;
for(lop=0; lop<2; lop++)//読み込みエラーチェック
	{
	if(!se[lop] || !BGM[lop]) SDL_Quit();
	}
}
//------------------------------------------------------------------------------効果音鳴らす
void playSE(int num)
{
Mix_PlayChannel(num, se[num], 0);
}
//------------------------------------------------------------------------------爆発エフェクト初期化用
void efect_init(Sint16 posX,Sint16 posY,Sint16 spd)
{
int lop;
for(lop=0;		lop<efcMax;		lop++) 
if(eft.flg[lop]==0)
	{
	eft.flg[lop]=1;//フラグオン
	eft.posX[lop]=posX-30;//敵機の位置格納
	eft.posY[lop]=posY-30;
	eft.cnt[lop]=0;
	eft.spd[lop]=spd;
	break;//ループ抜ける
	}
}
//------------------------------------------------------------------------------爆発エフェクト表示
void efect_main()
{
int lop;
for(lop=0;		lop<efcMax;		lop++) 
if(eft.flg[lop]>=1)
	{
	SDL_Rect efe;//描画矩形用
	//移動量計算
	eft.posX[lop]+=eft.spd[lop];
	eft.posY[lop]++;
	//座標＆大きさ代入
	efe.x=eft.posX[lop]+rand()%50;
	efe.y=eft.posY[lop]+rand()%50;
	efe.w=1+rand()%30; efe.h=1+rand()%30;
	//敵の点滅表示
	if(eft.cnt[lop]<3)eft.cnt[lop]++;
	else
		{
		ene_src(0,eft.posX[lop]+30,eft.posY[lop]+30);
		eft.cnt[lop]=0;
		}
	//色決定し爆発表示
	Uint8 R=rand()%256;
	Uint8 G=rand()%256;
	SDL_FillRect(mWIN,&efe,SDL_MapRGB(mWIN->format,R,G,255));
	//表示カウンタ
	if(eft.flg[lop]<120)eft.flg[lop]++;
	else eft.flg[lop]=0;//フラグ下げる
	}
}
//------------------------------------------------------------------------------爆発エフェクト初期化用その２
void efect_init2(Sint16 posX,Sint16 posY)
{
int lop;
for(lop=0;		lop<efcMax;		lop++) 
if(eft2.flg[lop]==0)
	{
	eft2.flg[lop]=1;//フラグオン
	eft2.posX[lop]=posX-10;//敵機の位置格納
	eft2.posY[lop]=posY-10;
	eft2.cnt[lop]=0;
	//eft2.spd[lop] 未使用
	break;//ループ抜ける
	}
}
//------------------------------------------------------------------------------爆発エフェクト表示その２
void efect_main2()
{
int lop;
for(lop=0;		lop<efcMax;		lop++) 
if(eft2.flg[lop]>=1)
	{
	SDL_Rect efe;//描画矩形用
	//移動量計算
	//eft2.posX[lop]+=eft2.spd[lop];
	//eft2.posY[lop]++;
	//座標＆大きさ代入
	efe.x=eft2.posX[lop]+rand()%30;
	efe.y=eft2.posY[lop]+rand()%30;
	efe.w=1+rand()%20; efe.h=1+rand()%20;
	//色決定し爆発表示
	Uint8 G=120+rand()%120;
	Uint8 B=rand()%256;
	SDL_FillRect(mWIN,&efe,SDL_MapRGB(mWIN->format,255,G,B));
	//表示カウンタ
	if(eft2.flg[lop]<60)eft2.flg[lop]++;
	else eft2.flg[lop]=0;//フラグ下げる
	}
}
//------------------------------------------------------------------------------BGMの演奏
void BGM_play(int num)
{
Mix_PlayMusic(BGM[num],-1);
}
//------------------------------------------------------------------------------BGMのリセット
void BGM_reset()
{
snd.flg=0; snd.cnt=0;
snd.num=0; snd.vol=128;//BGM
Mix_VolumeMusic(snd.vol);
BGM_play(snd.num);
}
//------------------------------------------------------------------------------BGMのフェードイン／アウト
void BGM_fade()
{
if(snd.flg==1)//フェードアウト
	{
	if(snd.cnt<1)snd.cnt++;//音量調節時間
	else
		{
		if(snd.vol>0)Mix_VolumeMusic(snd.vol--);//音量調整
		else
			{
			snd.flg=2;//フラグ変更
			//BGM番号変更
			if(snd.num==0)snd.num=1;
			else snd.num=0;
			BGM_play(snd.num);
			}
		snd.cnt=0;//カウンタ０に
		}
	}
else if(snd.flg==2)//フェードイン
	{
	if(snd.cnt<1)snd.cnt++;
	else
		{
		if(snd.vol<128)Mix_VolumeMusic(snd.vol++);
		else snd.flg=0;
		
		snd.cnt=0;
		}
	}
}
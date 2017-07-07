#include "headers.h"
int games;
SDL_Surface *mWIN;
timers timer;
inputKeys keys;
SDL_Surface *imgT;//画像用
SDL_Rect src,drw;//描画用
backStars starA,starB,starC;//バック地用
//------------------------------------------------------------------------------起動項目など
void startUp()
{
if(SDL_Init(SDL_INIT_VIDEO|SDL_INIT_JOYSTICK|SDL_INIT_AUDIO)==-1)	SDL_Quit();
mWIN=SDL_SetVideoMode(300,400,32,SDL_SWSURFACE);
SDL_WM_SetCaption("Inbeida",NULL);
games=0;
imageLoad();//画像ロード
loadSounds();//音ロード
imageLoadUFO();//UFO読み込み
imageLoadScore();//得点画像ロード
}
//------------------------------------------------------------------------------終了設定
int quits()
{
SDL_Event Qevnts;
if(SDL_PollEvent(&Qevnts))
	{
	switch(Qevnts.type)
		{
		case SDL_QUIT:
			return 0;
			break;
			
		case SDL_KEYDOWN:
			if(Qevnts.key.keysym.sym==SDLK_ESCAPE||Qevnts.key.keysym.sym==SDLK_q) return 0;
			break;
		
		default: break;
		}
	}
return 1;
}
//------------------------------------------------------------------------------FPS調整
void frames()
{
timer.now=SDL_GetTicks();//現在時間を取得
timer.wit=timer.now-timer.lev;//待ち時間を計算

if(timer.wit<16)//16以下ならCPUを休ませる
	{
	SDL_Delay(16-timer.wit);
	}
timer.lev=SDL_GetTicks();//経過時間を更新
SDL_UpdateRect(mWIN,0,0,0,0);//画面を更新
}
//------------------------------------------------------------------------------バック地
void backGraund()
{
if(games==0)SDL_FillRect(mWIN,NULL,SDL_MapRGB(mWIN->format,255,0,0));
else
	{
	bg_gra();//グラデ
	stars();//バック地の星
	}
}
//------------------------------------------------------------------------------画像読み込み
void imageLoad()
{
imgT=IMG_Load("inbeida.app/Contents/Resources/start_end.gif");
if(!imgT)	SDL_Quit();
}
//------------------------------------------------------------------------------画像表示_タイトル
void dr_Title(Sint16 posX,Sint16 posY)
{
src.x=0; src.y=0; src.w=100; src.h=50;
drw.x=posX; drw.y=posY;
SDL_BlitSurface(imgT,&src,mWIN,&drw);
}
//------------------------------------------------------------------------------画像表示_ゲームオーバー
void dr_end(Sint16 posX,Sint16 posY)
{
src.x=0; src.y=50; src.w=100; src.h=50;
drw.x=posX; drw.y=posY;
SDL_BlitSurface(imgT,&src,mWIN,&drw);
}
//------------------------------------------------------------------------------入力操作
void inputEngine()
{
Uint8 *getKeys=SDL_GetKeyState(NULL);
//-----------------------------------矢印キー確認
if(getKeys[SDLK_LEFT]==SDL_PRESSED)  keys.l=1; else keys.l=0;
if(getKeys[SDLK_RIGHT]==SDL_PRESSED) keys.r=1; else keys.r=0;
//-----------------------------------Ｚ印キー確認
if(timer.now-keys.time>1000)
	{
	if(getKeys[SDLK_z]==SDL_PRESSED)
		{
		keys.z=1;	 keys.time=timer.now;
		}
	}
else
	{
	keys.z=0;
	if(getKeys[SDLK_z]!=SDL_PRESSED) keys.time=0;
	}
}
//------------------------------------------------------------------------------ゲームスタート
void startGame()
{
if(keys.z==1)
	{
	games=1;//Ｚキーが押されたらゲームへ
	resets();//色々リセット
	}
}
//------------------------------------------------------------------------------タイトル画面へ戻る
void backTitle()
{
if(timer.now-otr.time>1000*1.5)
if(keys.z==1)
games=0;//Ｚキーが押されたらゲームへ
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
		SDL_FillRect(mWIN,&star,SDL_MapRGB(mWIN->format,0,126,255));
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
		SDL_FillRect(mWIN,&star,SDL_MapRGB(mWIN->format,255,255,255));
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
		SDL_FillRect(mWIN,&star,SDL_MapRGB(mWIN->format,0,255,0));
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
	SDL_FillRect(mWIN,&gra,SDL_MapRGB(mWIN->format,0,0,B));
	gra.y+=4;//Ｙ軸調整
	B++;//色数値増加
	}
}
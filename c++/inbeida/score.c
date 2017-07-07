#include "headers.h"
scores sco,hiS;//得点用
SDL_Surface *imgS;//得点画像用
//------------------------------------------------------------------------------得点画像読み込み
void imageLoadScore()
{
imgS=IMG_Load("inbeida.app/Contents/Resources/score.gif");
if(!imgS)	SDL_Quit();
}
//------------------------------------------------------------------------------得点リセット
void score_rest()
{
sco.iti=0;
sco.zyu=0;
sco.hya=0;
sco.sen=0;
sco.man=0;
}
//------------------------------------------------------------------------------得点-文字画像表示もと
void score_srcA(Sint16 pos,Sint16 width,Sint16 posX)
{
SDL_Rect src,drw;

src.x=10*pos;
src.y=0; src.w=10*width; src.h=10;
drw.x=posX; drw.y=10;
SDL_BlitSurface(imgS,&src,mWIN,&drw);
}
//------------------------------------------------------------------------------得点-数字画像表示もと
void score_srcB(Sint16 keta,Sint16 posX)
{
SDL_Rect src,drw;

src.x=10*keta;
src.y=10; src.w=10; src.h=10;
drw.x=posX; drw.y=10;
SDL_BlitSurface(imgS,&src,mWIN,&drw);
}
//------------------------------------------------------------------------------得点表示
void score_main()
{
//文字表示
score_srcA(4,6,10);//SCORE:
score_srcA(0,4,135); score_srcA(4,6,180);//HIGH SCORE:

//得点計算＆表示
if(sco.iti>9){sco.iti-=10; sco.zyu+=1;}
if(sco.zyu>9){sco.zyu-=10; sco.hya+=1;}
if(sco.hya>9){sco.hya-=10; sco.sen+=1;}
if(sco.sen>9){sco.sen-=10; sco.man+=1;}
if(sco.man>9) score_rest();//点数リセット
//点数表示
score_srcB(sco.man,70);//千の位
score_srcB(sco.sen,80);//千の位
score_srcB(sco.hya,90);//百の位
score_srcB(sco.zyu,100);//十の位
score_srcB(sco.iti,110);//一の位

//ハイスコアはここから
if( (sco.iti+sco.zyu*10+sco.hya*100+sco.sen*1000+sco.man*100)>=
	  (hiS.iti+hiS.zyu*10+hiS.hya*100+hiS.sen*1000+hiS.man*100)
	)
	{
	hiS.iti=sco.iti;
	hiS.zyu=sco.zyu;
	hiS.hya=sco.hya;
	hiS.sen=sco.sen;
	hiS.man=sco.man;
	}
//ハイスコア表示
score_srcB(hiS.man,240);//千の位
score_srcB(hiS.sen,250);//千の位
score_srcB(hiS.hya,260);//百の位
score_srcB(hiS.zyu,270);//十の位
score_srcB(hiS.iti,280);//一の位
}
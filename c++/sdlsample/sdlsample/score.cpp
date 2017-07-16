#include "headers.h"
scores sco,hiS;//得点用
SDL_Surface *scrSur;//画像用Surface
SDL_Texture *scrTex;//画像用Texture
SDL_Rect scrsrc,scrdrw;//描画用
//------------------------------------------------------------------------------得点画像読み込み
void imageLoadScore()
{
scrSur=IMG_Load("score.gif");
if(!scrSur)	SDL_Quit();
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

scrsrc.x=10*pos;
scrsrc.y=0; scrsrc.w=10*width; scrsrc.h=10;
scrdrw.x=posX; scrdrw.y=10;
    scrdrw.w = scrsrc.w;
    scrdrw.h = scrsrc.h;

    scrTex = SDL_CreateTextureFromSurface(bkRen, scrSur);//テクスチャに変換
    SDL_FreeSurface(scrSur);//テクスチャが得られたのでサーフェスを解放

    SDL_RenderCopy(bkRen, scrTex, &scrsrc, &scrdrw);
    SDL_RenderPresent(bkRen);
}
//------------------------------------------------------------------------------得点-数字画像表示もと
void score_srcB(Sint16 keta,Sint16 posX)
{

scrsrc.x=10*keta;
scrsrc.y=10; scrsrc.w=10; scrsrc.h=10;
    scrdrw.x=posX; scrdrw.y=10; scrdrw.w=10; scrdrw.h=10;

    scrTex = SDL_CreateTextureFromSurface(bkRen, scrSur);//テクスチャに変換
    SDL_FreeSurface(scrSur);//テクスチャが得られたのでサーフェスを解放

    SDL_RenderCopy(bkRen, scrTex, &scrsrc, &scrdrw);
    SDL_RenderPresent(bkRen);

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
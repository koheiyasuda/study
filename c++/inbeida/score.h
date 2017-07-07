typedef struct//得点用の変数
{
Sint16	iti,//一の位
				zyu,//十の位
				hya,//百の位
				sen,//千の位
				man;//万の位
}scores;
extern scores sco,hiS;

void imageLoadScore();
void score_rest();
void score_srcA(Sint16 pos,Sint16 width,Sint16 posX);
void score_srcB(Sint16 keta,Sint16 posX);
void score_main();
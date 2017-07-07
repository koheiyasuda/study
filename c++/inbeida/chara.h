#define bltMax 3
typedef struct//自機用の変数
{
Sint16	posX,//自機の位置Ｘ
				posY,//自機の位置Ｙ
				flgB[bltMax],//弾数
				bltX[bltMax],//弾のＸ座標
				bltY[bltMax];//弾のＹ座標
}ziki;
extern ziki mes;

#define eneMax 32
typedef struct//敵の変数
{
Sint16	flg, //出現フラグ
				posX,//敵の位置Ｘ
				posY,//敵の位置Ｙ
				cntA,//アニメ用のカウンタ
				cntB,//弾発射用のカウンタ
				cntM,//移動用のカウンタ
				spd; //移動スピード
}enemys;
extern enemys ene[eneMax],ufo;

typedef struct//その他の変数
{
Uint32	eNum,//敵出現の最大値
				time;//敵増加のタイミング
}otherVal;
extern otherVal otr;

#define eBltMax 64
typedef struct//弾の変数
{
Sint16	flg, //出現フラグ
				posX,//敵の位置Ｘ
				posY,//敵の位置Ｙ
				spd; //移動スピード
}tamas;
extern tamas tama[eBltMax];

void me_src(Sint16 posX,Sint16 posY);
void me_move();
void me_srcB(Sint16 posX,Sint16 posY);
void me_bullet();
void me_main();

void ene_src(Sint16 ani,Sint16 posX,Sint16 posY);
void ene_zouka();
void ene_main();

void blt_src(Sint16 posX,Sint16 posY);
void blt_init(Sint16 posX,Sint16 posY);
void blt_main();

void resets();
void chara();
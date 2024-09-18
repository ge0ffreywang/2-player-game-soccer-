//mode frame work
int mode;
final int INTRO   =1;
final int GAME    =2;
final int PAUSE   =3;
final int GAMEOVER=4;
final int V_SETUP =5;
//player setup
float RPx1,RPy1;
//legs
float lleg,rleg;
//variable to move the legs
float mlleg,mrleg;
//player movements
boolean wkey,skey,akey,dkey,upkey,downkey,leftkey,rightkey;

//TARGET VARIBLES
float vx, vy;//target velosity
void setup(){
  size(800,600);
  mode=GAME;
  
  //initialize keyboard variable(player movements)
  wkey=skey=akey=dkey=upkey=downkey=leftkey=rightkey=false;
  
  //initialize player legs;
  lleg=0;
  rleg=0;
  
  mlleg=1;
  mrleg=-1;
}

void draw(){
  if (mode==INTRO){
    intro();
  }else if(mode==GAME){
    game();
  }else if(mode==PAUSE){
    pause();
  }else if(mode==GAMEOVER){
    gameover();
  }else if(mode==V_SETUP){
    v_setup();
  }else {
   println("mode error:" +mode);
  }
}

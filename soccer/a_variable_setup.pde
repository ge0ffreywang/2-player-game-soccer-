void v_setup(){
  
  
}
void kickman(int x, int y){
  circle(RPx1+x,RPy1+y,80);
  //left leg
  rect(RPx1+x+lleg-40,RPy1+y-60,40,20);
  //right leg
  rect(RPx1+x+rleg,RPy1+y+40,40,20);
  //move player
  if (wkey==true)RPy1=RPy1-5;
  if (skey==true)RPy1=RPy1+5;
  if (akey==true)RPx1=RPx1-5;
  if (dkey==true)RPx1=RPx1+5;
  //move plyer legs
  //left leg
   translate(0,0);
 //left leg
 lleg=lleg+mlleg;
  if(lleg==40){
  mlleg=mlleg*-1;
  } else if(lleg==0){
  mlleg=mlleg*-1;
  }
  
  //right leg
   translate(0,0);
 rleg=rleg+mrleg;
  if(rleg==0){
  mrleg=mrleg*-1;
  } else if(rleg==-40){
  mrleg=mrleg*-1;
  }
}
void p1legs(){
 translate(0,0);
 translate(0,0);
 //left leg
 lleg=lleg+mlleg;
  if(lleg==40){
  mlleg=mlleg*-1;
  } else if(lleg==0){
  mlleg=mlleg*-1;
  }
 //left leg
 lleg=lleg+mlleg;
  if(lleg==40){
  mlleg=mlleg*-1;
  } else if(lleg==0){
  mlleg=mlleg*-1;
  }
}

void keyPressed(){
  if (key=='w' || key=='W') wkey=true;
  if (key=='s' || key=='S') skey=true;
  if (key=='a' || key=='A') akey=true;
  if (key=='d' || key=='D') dkey=true; 
 
  if (keyCode==UP) upkey=true;
  if (keyCode==DOWN) downkey=true;
}

void keyReleased(){
  if (key=='w' || key=='W') wkey=false;
  if (key=='s' || key=='S') skey=false;
  if (key=='a' || key=='A') akey=false;
  if (key=='d' || key=='D') dkey=false; 
  
  if (keyCode==UP) upkey=false;
  if (keyCode==DOWN) downkey=false;
}
void v_setupClicks(){
  
  
}

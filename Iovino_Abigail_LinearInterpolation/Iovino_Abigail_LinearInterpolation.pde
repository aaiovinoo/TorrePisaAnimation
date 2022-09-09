PShape bowlingBall;
PShape football;
PShape letterA;
PShape letterP;
PShape letterS;
PShape torrePisa;
PShape pisa;
float x1,y1,dx1,dy1, x2,y2,dx2,dy2, start1, stop1;
boolean myOwnCode;

void setup(){
  size(600,420);
  PShape pisa = createShape(GROUP);
  bowlingBall = loadShape("bowlingBall.svg");
  football = loadShape("football.svg");
  letterP = loadShape("letterP.svg");
  letterS = loadShape("letterS.svg");
  letterA = loadShape("letterA.svg");
  torrePisa = loadShape("torrePisa.svg");
  pisa.addChild(letterP);
  pisa.addChild(torrePisa);
  pisa.addChild(bowlingBall);
  pisa.addChild(football);
  pisa.addChild(letterS);
  pisa.addChild(letterA);
  
  //starting point
   x1 = 200;
   y1 = 150;
   dy1 = 0;
   dx1 = 0;
   x2 = 190;
   y2 = 150;
   dy2 = 0;
   dx2 = 0;
   
   
   myOwnCode = true;
}

void draw(){
  background(255);
  shape(letterP,50,150,80,120);
  shape(torrePisa,150,140,70,130);
  shape(letterS,300,150,60,120);
  shape(letterA,430,150,100,118);
  
  if (y1<250){
    
    if (myOwnCode){
      dy1 += .1;
      y1 += (dy1*dy1);
      dx1 += .1;
      x1 += sqrt(dx1); 
    } else {
      dy1 += .1;
      y1 = lerp(150,250, dy1);
      dx1 += .1;
      x1  = lerp(200,250, dx1);
      println(x1,y1);
    }
  }
  
  shape(bowlingBall, x1, y1, 25,25);
  
  
  if (y2<250){
    if (myOwnCode){
    dy2 += .1;
    y2 += (dy2*dy2);
    dx2 += .01;
    x2 += sqrt(dx2);  
    } else {
      dy2 += .1;
      y2 = lerp(150,250, dy2);
      dx2 += .1;
      x2  = lerp(200,230, dx2);
      println(x2,y2);
    }
    
  }
  
  shape(football, x2, y2, 25,25);
  
}

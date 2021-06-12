  float time=0;
  float x=0;
  float maxBallSize = map(noise(time), 0, 1, height*.3, height*.5);
  float ballSize = height*.5;
  float finalSize = 0;
  float closeness = 0;

void setup(){
  size(1500,300);
  background(0);
  //noStroke();
  //frameRate(15);
}
void draw(){
   fill(closeness);
   closeness+=time*.3;
  if (x < width-(height*.5)){
    time+=.08;
    x+=7;
    if(x<=height){
       ballSize = map(noise(time), 0, 1, height*.20, height*.6);
       finalSize = x/ballSize;
     } else if (ballSize >=0 && x>=width*.75){
       ballSize -=finalSize;
     }
      //maxBallSize = height*.5;
    //}
    float y = map(noise(time), 0, 1, height*.25, height*.75);
    ellipse(x,y, ballSize,ballSize);
    println(ballSize);
  }
}

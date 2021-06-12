  float time=0;
  float x=0;
  float maxBallSize = map(noise(time), 0, 1, height*.3, height*.5);
  float ballSize = height*.5;

void setup(){
  size(1000,300);
  background(0);
  fill(255);
  //frameRate(15);
}
void draw(){
  if (x < width-(height*.5)){
    time+=.07;
    x+=5;
    if(x<=height){
       ballSize = map(noise(time), 0, 1, height*.20, height*.6);
     } else if (ballSize >=0 && x>=width*.75){
       ballSize -=5;
     }
      //maxBallSize = height*.5;
    //}
    float y = map(noise(time), 0, 1, height*.25, height*.75);
    ellipse(x,y, ballSize,ballSize);
    println(ballSize);
  }
}

  float time=0;
  float x=0;

void setup(){
  size(1000,300);
  background(0);
  fill(255);
  //frameRate(.5);
}
void draw(){
  if (x < width-100){
    time+=.05;
    x+=4;
    float y = map(noise(time), 0, 1, height*.25, height*.75);
    float ballSize = map(noise(time), 0, 1, 10, 50);
    ellipse(x,y, ballSize,ballSize);
  }
}

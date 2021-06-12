  float time=0;
  float x=0;

void setup(){
  size(1000,300);
  background(0);
  fill(255);
  //frameRate(.5);
}
void draw(){
  time+=.05;
  if (x < width-100){
  x+=4;
  float y = map(noise(time), 0, 1, height*.25, height*.75);
  ellipse(x,y, 50,50);
  }
}

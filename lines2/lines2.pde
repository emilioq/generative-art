float t = 1;
float bg = 25;
float bgVel = 1.5;

  float r = 0;
  float g = 0;
  float b = 0;

void setup() {
  //background(25);
  size(500,500); 
  stroke(250);
  strokeWeight(3.5);
}

void draw() {
  /*background(bg);
  bg+=bgVel;
  if (bg >= 225 || bg <= 0){
   bgVel=-bgVel; 
  }
  */
  
  strokeWeight(3);
  for (int i = 0; i < width; i++) {
    stroke(r,i,i);
    line(0, i, width, i);
  }
  
  r+=bgVel;
  g+=bgVel*.5;
  b+=bgVel/5;
  
  
  
  translate(width/2, height/2);
  
  for(int i = 0; i < 36; i++) {
    stroke(250-i*2.5);
    line(x1(t+(i/2)),y1(t+(i/2)),x1(t*2+(i/2)),y1(t/2+(i/2)));
  }
  
  //line(x1(t),y1(t),x1(t*2),y1(t/2));
  //point(x1(t),y1(t));
  t+=.2;
}

float x1(float a){
  return sin(a/15) * 200;
}

float y1(float a){
  return cos(a/15) * 200;
}
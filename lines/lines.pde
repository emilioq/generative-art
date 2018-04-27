static final int num_lines = 15;
float t;

void setup() {
  background(20);
  size(500,500);
}

void draw() {
  background(20);
  stroke(250,230,200);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  for(int i = 0; i < num_lines; i++) {
    stroke(250 - (i * 10), 230, 200);
    line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
    
    stroke(250, 230 - (i * 5), 200);
    line(x2(t+i), y1(t-i), x1(t+i), y2(t-i));
    
    stroke(250, 230, 200 - (i * 15));
    line(x2(t-i), x1(t-i), y1(t-i), y2(t+i));
  }
  
  //point(x1(t), y1(t));
  //point(x2(t), y2(t));
  t += .5;

}

float x1(float t) {
  return sin(t/10) * 100 + sin(t/15) * 100;
}

float y1(float t) {
  return cos(t/10) * 200;
}

float x2(float t) {
  return sin(t/10) * 100 + sin(t/500) * 2;
}

float y2(float t) {
  return cos(t/20) * 100;
}
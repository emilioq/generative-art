float h = -height;
float hVel = 2;
float s = 350;
float sVel = -.75;
boolean fillCheck = false;


void setup() {
  size(500, 500);
  background(20);
}

void draw() {
  background(20);
    
  String str = "I'm just too much . . .";
  fill(250);
  
  line(0, height/2, width, height/2);
  
  textSize(32);
  textAlign(CENTER, BOTTOM);
  text(str,width/2,height/2);
  
  
  if (fillCheck == false) {
    stroke(225);
    noFill();
  }
  
  if (fillCheck == true) {
    //noStroke();
    fill(225);
  }
  ellipse(width/2, h, s, s);
  h += hVel;
  s += sVel;
  if(h > height - height/4) {
    h = -height;
    s = 350;
    fillCheck = !fillCheck;
  }
   
  
  fill(20);
  rect(-1, height/2, width+1, height/2);
  //stroke(20);
  
  
  
}
class Drop {
  float x = random(width);
  float y = random(-200,-50);
  float z = random(0,10);
  
  float length = map(z,0,10,5,15);
  float diag = random(1,2);
  float ySpeed = map(z,0,10,5,8);
  float xSpeed = random(0,1);

  void fall() {
    y = y + ySpeed;
    x = x + xSpeed;
    
    float grav = map (z, 0, 10, 0, 0.25);
    ySpeed = ySpeed + grav;
    
    if ( y > height ) {
      x = random(width);
      y = random(-200, -50);
      ySpeed = map(z,0,10,5,8);
      
    }

  }
  
  void show() {
    float thick = map(z, 0, 10, 1, 2);
    strokeWeight(thick);
    stroke(y, 193, 211);
    line(x,y,x+diag,y+length);
  }
}
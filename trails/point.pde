class point {
  float xRand;
  float yRand;
  float xVel;
  float yVel;
  float weight;
  float z;
  float zVel;
  
  PShape pt;
 
  
  
  point(float x, float y) {
    this.xRand = random(0,width);
    this.yRand = random(0,height);
    this.xVel  = x;
    this.yVel  = y;
    this.weight =random(5,10);
    this.z = 3;
    this.zVel= .25;
    //pt = createShape(POINT, xRand, yRand);
  }
  
  
  void move() {
    pt = createShape(POINT, xRand, yRand);
    pt.setStroke(color(random(255)));
    xRand += xVel;
    yRand += yVel;
    z += zVel;
    strokeWeight(15+z);
      
    if (xRand > width || xRand < 0) {
      xVel = -xVel;
      //colorChange();
      
    }
      
    if (yRand > height || yRand < 0) {
      yVel = -yVel;
      //colorChange();
      
    }
    
    if (z <= 1 || z >= 25) {
      zVel = -zVel; 
    }
    
  }
  
  void display(){
   shape(pt);
  }
  
  void colorChange(){
    pt.setStroke(color(random(0,225),random(0,225),random(0,225)));
  }
  
  /*
  float x(float t) {
    return t; 
  }

  float y(float t) {
    return t;
  }
  */
  
}
point[] Points = new point[11];

void setup() {
  background(20);
  //size(650, 325);
  size(900,600);
  
  for(int i = 0; i < Points.length; i++) {
    float x = random(1,5);
    float y = random(1,5);
    
    Points[i] = new point(x, y);
    noFill();
    stroke(220);
    strokeWeight(15);
  }
  
  
}

void draw() {
  for(int i = 0; i < Points.length; i++) {
    Points[i].move();
    Points[i].display();
  }

}
//rain
// (64, 72, 86) background
// (182, 193, 211)


Drop[] drops = new Drop[1000];
import processing.sound.*;
SoundFile loop;
float lifespan = 255;

void setup(){
  size(640, 360);
  
  for(int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
  
  loop = new SoundFile(this, "rainloop.mp3");
  loop.play();
}

void draw(){
  background(64,72,86);
  for(int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
    
    if (drops[i].y > height) {
      lifespan = lifespan - 1;
      stroke(255, lifespan);
      //fill(255, lifespan);
      ellipse(drops[i].x, 200, 10, 10);
      
    }
  }
}

  
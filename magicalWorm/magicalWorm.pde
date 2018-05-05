int x = 0; 
int y = 0;
int rx = (int)random(700);
int ry = (int)random(700);

void setup(){
  size(700,700);
  background(255, 2, 175);
}
void draw(){
  int r = (int)random(255);
   int g = (int)random(255);
   int b = (int)random(255);
   fill(r, g, b);
  ellipse(getWormX(rx),getWormY(ry),50,50);
  makeMagical();
  if (y==700){
   stop();
  }
}
float frequency = .01;
float noiseInterval = PI;

void makeMagical() {
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) {
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
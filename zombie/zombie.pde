int red=0;
int green=0;
int blue=0;

void setup(){
 size(900,900);
 
  


    PImage face = loadImage("face.jpeg");
face.resize(width, height);

image(face, 0 ,0);

}

void draw(){
  fill(red,green,blue);
  ellipse(300,500,100,100);
 
  ellipse(600,500,100,100);
  fill(0,0,0);
ellipse(600,530,50,50);
fill(0,0,0);
ellipse(300, 530,50,50);
  
}
void mouseMoved(){
  red = (int)random(255);
  green = (int)random(255);
  blue = (int)random(255);
}

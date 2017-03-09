import processing.sound.*; 
SoundFile sound;  
PImage goblin; 
PImage cat;
PImage eye;
void draw(){
  fill(245,212,129);
  ellipse(500, 500, 700, 700);
  fill(188,0,0);
  ellipse(500,500,650, 650);
  fill(224,191,2);
  ellipse(500,500,620,620);
   
    

if(mousePressed) {
  
    goblin = loadImage("pizza.gif");
  image(goblin,500,500);
cat = loadImage("kitten.ppm.gif");
image(cat,400,400);
eye = loadImage("eyeball.ppm.gif");
image(eye,500,400);
goblin = loadImage("pizza.gif");
  image(goblin,600,500);
cat = loadImage("kitten.ppm.gif");
image(cat,500,300);
eye = loadImage("eyeball.ppm.gif");
image(eye,220,500);
  goblin = loadImage("pizza.gif");
  image(goblin,600,450);
cat = loadImage("kitten.ppm.gif");
image(cat,500,350);
eye = loadImage("eyeball.ppm.gif");
image(eye,480,400);
goblin = loadImage("pizza.gif");
  image(goblin,670,580);
cat = loadImage("kitten.ppm.gif");
image(cat,540,300);
eye = loadImage("eyeball.ppm.gif");
image(eye,270,600);
 
}
}
void setup(){
  size(1000,1000);
 sound = new SoundFile(this, "fart.mp3");
}

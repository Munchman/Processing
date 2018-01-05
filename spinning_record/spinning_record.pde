import ddf.minim.*;  //at the very top of your sketch
Minim minim;  //as a member variable
AudioPlayer song;  //as a member variable



PImage pictureOfRecord;  
int speed=100;
int angle=5;
void setup(){

size(400,400);
  pictureOfRecord= loadImage("record.jpg"); 
  pictureOfRecord.resize(width,height);
  minim = new Minim(this);  //in the setup method
song = minim.loadFile("The_Batman_Theme_Song[Mp3Converter.net].mp3", 512);//in the setup method

}
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}

void draw(){
  if(mousePressed){
    song.play();
    rotateImage(pictureOfRecord, angle);
image(pictureOfRecord, 00, 0);
angle+=speed;}
else{
  song.pause();
}
}

int x = 20;
void setup() {
  size(800, 200);
}

void draw() {
 background(#F252F5);
 fill(255,255,255);
 rect(750,0,200,200);
 
 
  //4. if the mouse is pressed...
     if(mousePressed){
x+=1000;
     }
//5. ... change the X co-ordinate so that the dot moves to the right
      
  
fill(#EDFF00);
ellipse(x,100,100,100);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 
if(x>750){
  playSound();
}
}
import ddf.minim.*;
boolean soundPlayed = false;
  void playSound() {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("yaw.wav");
    sound.trigger();
    soundPlayed = true;
  }
}





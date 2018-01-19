import ddf.minim.*;
boolean soundPlayed = false;
int score;
int y= 100;
  int x= (int) random(0,1000);
void checkCatch(){
     if (x > mouseX && x < mouseX+100){
          score++;
          playSound();
     }    
     else if (score > 0) 
          score--;
         println("Your score is now: " + score); 
      }
        void playSound() {
    if (!soundPlayed) {
        Minim minim = new Minim(this);
        AudioSample sound = minim.loadSample("splash.wav");
        sound.trigger();
        soundPlayed = true;
    }
}

void setup(){
  size(1000,500);
  
}


void draw(){
    background(255,196,0);      
    fill(30,30,220);
stroke(255,255,255);
ellipse(x, y+=6, 50, 50);
   
   fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
if(y>height){
  checkCatch();
       x= (int) random(0,1000);
  y=50;
}
fill(0,0,0);
rect( mouseX,  height-50,  150,  50);

}

  
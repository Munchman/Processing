
int y= 100;
  int x= (int) random(0,1000);
void checkCatch(int score){
     if (x > mouseX && x < mouseX+100)
          score++;
     else if (score > 0) 
          score--;
     println("Your score is now: " + score); }
void setup(){
  size(1000,500);
  
}


void draw(){
  background(255,196,0);
  fill(30,30,220);
stroke(255,255,255);
ellipse(x, y+=5, 100, 100);
if(y==500){
       x= (int) random(0,1000);
  y=50;
}
fill(0,0,0);
rect( mouseX,  height-50,  150,  50);

}

  
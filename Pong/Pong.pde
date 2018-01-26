int x=300;
int y=300;
int direction=10;
int yDirection=10;
void setup(){
  size(600,600);
}

void draw(){
  background(#FF03D6);
  ball();
  paddle();
  if(x==600 || x==0){   // 
    reverseDirection();
  }
  if (intersects(x,y,mouseX,575,100)||y==0){
    reverseYDirection();
  }
  if(y>620){
   textSize(100);
text("GAME OVER", 10, 100); 
fill(200, 0, 0);

 
  }
}
 
 void ball(){
  fill(#03E5FC);
  ellipse(x+=direction,y+=yDirection,30,30);
}
void reverseDirection(){
  direction=-direction;
}
void reverseYDirection(){
  yDirection=-yDirection;
}
void paddle(){
  fill(#8C9798);
  rect(mouseX,575,100,10);
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}
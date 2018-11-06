int bx=100;
int by=500;
int radius=25;
int pipey=0;
int pipex=500;
int pipey2=600;
int pipex2=500;
int upperPipeHeight = (int) random(100, 500);
int lowerPipeHeight = 1000;
int pipew=100;
int score=0;
boolean gameover=false;
void setup(){
  size(2000,1000);
  textSize(60);
}

void draw(){
  if(gameover){
    textSize(80);
  text("GAME OVER",1000,500);
   fill(255,50,25);
  }
  else{
  background(211,137,69);
  stroke(255,255,255);
  fill(123,132,213);
  ellipse(bx,by,50,50);
  fill(241,231,142);
  rect(pipex--,pipey,pipew,upperPipeHeight);
  fill(241,231,142);
  rect(pipex2--,pipey2,pipew,lowerPipeHeight);

  by=by+3;

  
    if (mousePressed){
  by=by-10;
}

if(intersectsPipes()){
 gameover= true;
  
  
}
if(by>1000){

  gameover=true;
}
if(pipex ==0 ){
  pipex = width;
  pipey = 0;
    fill(241,231,142);
  rect(pipex--,pipey,pipew,upperPipeHeight);

}
if(pipex2 ==0){
  pipex2 = width;
  pipey2 = 600;
  fill(241,231,142);
  rect(pipex--,pipey,pipew,upperPipeHeight);
}
if (bx==pipex&&bx==pipex2&&!intersectsPipes()){
score++;

  
   
  
}

   fill(0,0,0);
   text(score,50,50);
//if(bx==pipex){
  //score++;

//}
  //fill(0,0,0);
  //text(score,200,50);
 

} }
//boolean intersectsPipes() { 
     //if (by < upperPipeHeight && bx > pipex && bx < (pipex+pipew)){
         // return true; }
    // else if (by<lowerPipeHeight && bx > pipex2 && bx < (pipex2+pipew)) {
       //   return true; }
     //else { return false; }
//}
boolean intersectsPipes() { 
     if (by < upperPipeHeight && bx > pipex && bx < (pipex+pipew)){
          return true; }
     else if(by<lowerPipeHeight&&bx + 50 == pipex+pipew&&bx-50==pipex){
       return true;
     }
     return false;
}
int bx=100;
int by=500;
int pipey=0;
int pipex=500;
int pipey2=750;
int pipex2=500;
int upperPipeHeight = (int) random(100, 600);
int lowerPipeHeight = (int) random(100, 600);
int pipew=100;
void setup(){
  size(2000,1000);
  
}

void draw(){
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
if(mousePressed){
  bx=bx+4;
}
if(intersectsPipes()){
  bx=100;
  by=500;
  
}

} 
boolean intersectsPipes() { 
     if (by < upperPipeHeight && bx > pipex && bx < (pipex+pipew)){
          return true; }
     else if (by>lowerPipeHeight && bx > pipex && bx < (pipex+pipew)) {
          return true; }
     else { return false; }
}
int bx=100;
int by=500;
void setup(){
  size(2000,1000);
}

void draw(){
  background(211,137,69);
  stroke(255,255,255);
  fill(123,132,213);
  ellipse(bx,by,50,50);
  fill(241,231,142);
  rect(500,0,250,500);
  fill(241,231,142);
  rect(500,750,250,400);
  by=by+5;
  
  if (mousePressed){
  by=by-20;
}
if(mousePressed){
  bx=bx+7;
}

}
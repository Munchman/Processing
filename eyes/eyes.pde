void setup(){
  size(1000,1000);
}


void draw(){
  if(mousePressed){
    
  
  fill(255,255,255);
  ellipse(200,400,400,200);
  
  fill(0,0,0);
  
    ellipse(mouseX,mouseY,100,100); //left
  fill(255,255,255);
  ellipse(800,400,400,200);
  fill(0,0,0);
  ellipse(mouseX+500,mouseY,100,100);
}}
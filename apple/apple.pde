void setup(){
  background(20,20,245);
  size(1000,1000);
  noStroke();
 
}

void draw(){
 
  fill(20,230,90);
  rect(450,310,10,50);
  fill(250,20,30);
  ellipse(400,500,300,300);
  fill(250,20,30);
  ellipse(500,500,300,300);
   if(mousePressed){
    fill(20,20,245);
    ellipse(300,400,90,90);
  }
   
}
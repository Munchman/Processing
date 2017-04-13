int i=700;
int counter=1;
void setup(){
 size(1000,1000); 
 noStroke();
}

void draw(){
  
  if(i>99){
if(counter %2==1){    
  fill(200,0,20);}
  else{
  fill(255,255,255);}
counter++;
ellipse(500,500,i,i);  
i-=100;
}


}

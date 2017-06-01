int x=200;
int y=200;

void setup(){
  size(1000,1000);
  
}

void draw(){
  background(29,62,219);
  
  UFO(x++,y);
  
  if(x==1000){
  UFO(x--,y);
}
}
void UFO(int i, int o){
  fill(#9FDB77);
  ellipse(i,o,100,100);
  fill(#C7D3D8);
  ellipse(i,o,200,20);
}
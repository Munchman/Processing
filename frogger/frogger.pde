int fx=200;
int fy=370;

void setup(){
  size(400,400);
  
}



void draw(){
  background(193,184,184);
  
  fill(10,230,100);
  ellipse(fx,fy,10,10);
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  fy++;
            }
            else if(keyCode == DOWN)
            {
                  fy--;
            }
            else if(keyCode == RIGHT)
            {
                  fx++;
            }
            else if(keyCode == LEFT)
            {
               fx--;
            }
      }
}

void invisibleFence(){
  if(fx<=5){
    fx=5;
  }
  if(fx>=width-5){
    fx=width-5;
  }
  if(fy>=height-5){
    fy=height-5;
  }
  
}
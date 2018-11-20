int fx=200;
int fy=370;

  Car c = new Car(350, 100,50);
  Car c2 = new Car(350, 200,50);
void setup(){
  size(400,400);
c2.setSpeed(5);
}



void draw(){
  background(193,184,184);
invisibleFence();

  c.display();
  c2.display();
  fill(10,230,100);
  ellipse(fx,fy,10,10);
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                 fy= fy-5;
            }
            else if(keyCode == DOWN)
            {
                  fy=fy+5;
            }
            else if(keyCode == RIGHT)
            {
                 fx= fx+5;
            }
            else if(keyCode == LEFT)
            {
              fx= fx-5;
            }
      }
}

public void invisibleFence(){
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
class Car{
  int cx= 350;
int cy=200;
int csize= 50;

int speed=3;


  Car(int cx,  int cy, int csize){
   this.cx=cx;
   this.cy=cy;
   this.csize=csize;
   
  }
  void display() 
{
      fill(255,0,0);
      rect(cx , cy, csize, 30);
       cx= cx-speed;
       if (cx<=-csize){
        speed=-speed;
       }
       else if (cx>=width){
         speed = - speed;
       }
       
}
  public void setSpeed(int speed){
    this.speed=speed;
  }

}
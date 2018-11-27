int fx=200;
int fy=370;
boolean hit=false;
  Car c = new Car(350, 100,50);
  Car c2 = new Car(350, 200,50);
void setup(){
  size(400,400);
c2.setSpeed(5);
}



void draw(){
  background(193,184,184);
invisibleFence();
if(intersects(c)||intersects(c2)){
  hit=true;}
  if(hit){
  textSize(60);
background(10,200,76);
    fill(200,40,10);
text("game over", 0,200);
  fill(200,40,10);

}

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
                 fy= fy-6;
            }
            else if(keyCode == DOWN)
            {
                  fy=fy+6;
            }
            else if(keyCode == RIGHT)
            {
                 fx= fx+6;
            }
            else if(keyCode == LEFT)
            {
              fx= fx-6;
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

boolean intersects(Car car) {
      if ((fy > car.getY() && fy < car.getY()+50) && (fx > car.getX() && fx < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }}
      
      
      class Car{
private int cx= 350;
private int cy=200;
private int csize= 50;
private int speed=3;


  Car(int cx,  int cy, int csize){
   this.cx=cx;
   this.cy=cy;
   this.csize=csize;
   
  }
 int getY(){
    return cy;
  }
  int getX(){
    return cx;
  }
  int getSize(){
    return csize;
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
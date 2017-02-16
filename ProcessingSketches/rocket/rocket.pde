/* 1. Change the code below to make the rocket ship take off. */
/* 2. Add a moon and stars to the sky. */

int x = 400;
int y = 600;

void setup() {
  background(0, 0, 140);
  size(800, 800);
}

void draw() {
  background(0, 0, 140);
  fill(random(255), 0, 0);
  ellipse(x, y + 120, 90, 90);
  fill(248, 128, 0);
  ellipse(x, y + 105, 70, 70);
  fill(255, 153, 0);
  ellipse(x, y + 85, 35, 35);
  fill(100, 100, 100);
  triangle(x, y + 0, x + 50, y + 90, x - 50, y + 90);
  y=y-10;
  fill(255, 255, 255);
  ellipse(100, 200, 80,80);
  fill(165,152,152);
  ellipse(120, 200, 20, 20);
  fill(165, 152,152);
  ellipse(105, 190, 10, 20);
   fill(165, 152,152);
   ellipse(90, 170,10,10);
   fill(165, 152,152);
   ellipse(90, 210, 30,30);
}




int x;
int y;
PImage webImg;

void setup(){
  size(400, 500);
  strokeWeight(10);
  background(255, 255, 255);
  stroke(222,184,135);
  line(0, 450, 400, 450);
  stroke(0);
  line(250, 300, 300, 350);
  line(300, 350, 350, 400);
  line(300, 350, 300, 420);
  line(300, 420, 280, 470);
  line(300, 420, 320, 470);
  ellipse(300, 310, 70, 70);
  ellipse(150, 200, 70, 70); //second guy
  line(120, 220, 50, 300);
  line(120, 220, 160, 270);
  line(120, 220, 160, 280);
  line(50, 300, 70, 350);
  line(50, 300, 90, 330);
}

void draw(){
  while(x > 0){
    int endX = x - (int)(Math.random() * 10);
    int endY = y + (int)(Math.random()* 40) - 20;
    stroke(0, 50, (int)(Math.random() * 100) + 100);
    line(x, y, endX, endY);
    x = endX;
    y = endY;
  }
}

void mousePressed(){
  x = 250;
  y = 300;
  redraw();
}

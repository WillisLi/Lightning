int x;
int y;

void setup(){
  size(400, 500);
  strokeWeight(10);
  String url = "https://c1.staticflickr.com/9/8452/7986344308_15e739d130_b.jpg";
  PImage webImg;
  webImg = loadImage(url, "jpg");
  webImg.resize(400,500);
  background(webImg);
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
  x = 55;
  y = 150;
  redraw();
}

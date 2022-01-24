int x, y;


void setup(){
  size(600, 400);
  x = 0;
  y = 100;
}

void draw(){
  background(200);
  ellipse(x, y, 50, 50);
  x = x + 1;
}

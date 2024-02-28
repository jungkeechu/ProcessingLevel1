int x, y;
int diam; // ball's diameter
int xdir;

void setup(){
  size(600, 400);
  x = 300;
  y = 100;
  diam = 30;
  xdir = +5;
}

void draw(){
  background(200);
  ellipse(x, y, diam, diam);
  x = x + xdir; // ball movement
  
  if (x + diam/2 > 600){
    xdir = xdir * -1;
    fill(#ffff00);
  }
  
  if (x - diam/2 < 0){
    xdir = xdir * -1;
    fill(#ff0000);
  }
}

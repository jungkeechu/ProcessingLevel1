int x, y;
int diam; // ball's diameter
int xdir, ydir;
color ballColor; 

void setup(){
  size(600, 400);
  x = 300;
  y = 100;
  diam = 30;
  xdir = +5;
  ydir = +3;
  ballColor = #000000; //hexadecimal(0..F)
}

void draw(){
  background(200);
  
  fill(ballColor);
  ellipse(x, y, diam, diam);
  x = x + xdir; // ball movement
  y = y + ydir;
  
  if (x + diam/2 > width){ // system variable
    xdir = xdir * -1;
    ballColor = #ffff00;
  }
  if (x - diam/2 < 0){
    xdir = xdir * -1;
    ballColor = #ff0000;
  }
  if (y + diam/2 > height){
    ydir = ydir * -1;
  }
  if (y - diam/2 < 0){
    ydir = ydir * -1;
  }
  
}

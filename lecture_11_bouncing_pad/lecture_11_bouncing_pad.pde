int x, y;
int diam;
int xDir, yDir;
color ballColor;

int padX, padY;
int padWidth;
color padColor;

void setup(){
  size(800, 600);
  x = width / 2;
  y = height / 2;
  xDir = -4;
  yDir = -4;
  diam = 50;
  ballColor = #FFFF00;
  padColor = #00FF00;
  padX = width/2;
  padY = height-20;
  padWidth = 200;
  noStroke();
}

void draw(){
    background(200);
   
    // ball drawing
    fill(ballColor);
    ellipse(x, y, diam, diam); 
    x += xDir; //x = x + xDir;
    y += yDir; 
    
    // drawing racket...
    fill(padColor);
    padX = mouseX - padWidth/2;
    rect(padX, padY, padWidth, 20, 15);
    
    // ball bouncing 
    if ( x < diam/2) { // left side check
      xDir *= -1;
      //padWidth = padWidth - 10;
    }
    if ( x > width-diam/2) { // right side check
      xDir *= -1;
      //padWidth = padWidth - 20;
    }
    if ( y < diam/2) {
      yDir *= -1;
    }
    if ( y > height-diam/2 ) {
      yDir *= -1;
    }
    
    if ( x > padX &&
         x < padX + padWidth &&
         y > padY-diam/2){
           yDir *= -1;
           fill(#FF0000);
           rect(padX+2, padY+2, padWidth-4, 16, 15);
    }
}

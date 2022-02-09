int xPos, yPos;
int xDir, yDir;
int diameter;
  
color ballColor, padColor;

int padX, padY;
int padWidth;

void setup(){
  size(800, 600);
  xPos = width / 2;
  yPos = height / 2;
  xDir = -4;
  yDir = -4;
  diameter = 50;
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
    ellipse(xPos, yPos, diameter, diameter); 
    xPos += xDir; //xPos = xPos + xDir;
    yPos += yDir; 
    
    // drawing racket...
    fill(padColor);
    padX = mouseX - padWidth/2;
    rect(padX, padY, padWidth, 20, 15);
    
    // ball bouncing 
    if ( xPos < diameter/2) { // left side check
      xDir *= -1;
      //padWidth = padWidth - 10;
    }
    if ( xPos > width-diameter/2) { // right side check
      xDir *= -1;
      //padWidth = padWidth - 20;
    }
    if ( yPos < diameter/2) {
      yDir *= -1;
    }
    if ( yPos > height-diameter/2 ) {
      yDir *= -1;
    }
    
    if ( xPos > padX &&
         xPos < padX + padWidth &&
         yPos > padY-diameter/2){
           yDir *= -1;
           fill(#FF0000);
           rect(padX+2, padY+2, padWidth-4, 16, 15);
    }
}

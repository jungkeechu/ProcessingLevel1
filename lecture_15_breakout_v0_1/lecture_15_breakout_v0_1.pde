// ball's position and movement
int x, y, xDir, yDir, diam;
color ballColor;

// pad's initial position and size
int padX, padY, padWidth;
color padColor;

// bricks
int bRowNo = 4, bColNo=10;
int bWidth, bHeight;
int [][] bricks = new int[bRowNo][bColNo]; // 2 dimensional array

// score
int score;

void setup(){
  
  // canvas initialization
  size(800, 600);
  bWidth = width/bColNo;
  bHeight = 30;

  // parameter setting for a new game
  int i, j;
  
  // ball and pad's position initialization
  x = width / 2;
  y = height / 2;
  xDir = 4;
  yDir = 6;
  diam = 20;
  ballColor = #FFFF00;
  
  // pad
  padX = width / 2;
  padY = height - 20;
  padWidth = 400;
  padColor = #00FF00;

  // score
  score = 0;

  // brick initialization at the top
  for(i=0; i<bRowNo; i++){
    for(j=0; j<bColNo; j++){
        bricks[i][j] = int(random(2)) + 1;
    }
  }
}

void draw(){
  int i, j;
  
  background(200);
  
  // score 
  PFont f;
  f = createFont("Arial", 16, true); // Arial, 16 point, anti-aliasing on
  textFont(f, 16); // font and its size setting
  fill(#FF0000); // font fill color setting
  text("Score : " + str(score), 10, bRowNo * bHeight + 100); // score drawing
  
  // brick drawing color setting
  stroke(0); // stroke color
  strokeWeight(2); // stroke thickness

  // bricks drawing
  for(i=0; i<bRowNo; i++){
    for(j=0; j<bColNo; j++){
      if ( bricks[i][j] == 1) {
        fill(#7E8AF0);
        rect(j*bWidth, i*bHeight, bWidth, bHeight);        
      } else if ( bricks[i][j] == 2){
        fill(#182EEA);
        rect(j*bWidth, i*bHeight, bWidth, bHeight);
      }
    }
  }
 
  // ball drawing and movement
  noStroke();
  fill(ballColor);
  ellipse(x, y, diam, diam); 
  x += xDir; //x = x + xDir;
  y += yDir; 
  
  //*****
  // for the 2d array indexing, we use division operator for collision checking between the ball and bricks. 
  // In this case, we have to make sure x and y are on the canvas. 
  //x = (x < width)? x: width-1;
  //y = (y < height)? y: height-1;
  //x = (x < 0)? 0: x;
  //y = (y < 0)? 0: y;  
  // or we can use constrain() function.
  x = constrain(x, 0, width-1);
  y = constrain(y, 0, height-1);
  //*****
  
  // drawing a pad at new positon
  fill(padColor);
  padX = mouseX - padWidth/2;
  rect(padX, padY, padWidth, 20, 15);  
  
  // ball bouncing 
  if ( x <= diam/2 || x > width-diam/2) { // left and right side check
    xDir *= -1;
  }
  if ( y >= height-diam/2 ) { // down side check
    yDir *= -1;
  }
  
  // if the ball in in the region of bricks
  if ( y < bHeight*bRowNo ) {
    // when the ball hits the bricks
    if ( bricks[y/bHeight][x/bWidth] > 0) {
        yDir *= -1;
        bricks[y/bHeight][x/bWidth]--;
        score++;
    }
    else if ( y <= 0) yDir *= -1;     // bounce at the top
  }
  
  // pad bounding
  if ( x > padX && x < padX + padWidth &&
       y > padY-diam/2){
         yDir *= -1;
         fill(#FF0000);
         rect(padX+2, padY+2, padWidth-4, 16, 15);
  }
}

// array
int [] bricks = new int [10];

void setup() {
  int i;
  
  size(500, 500);

  // while loop
  i = 0;
  while(i < 10){
      bricks[i] = 1;
      i++;
  }
}


void draw(){
  int i;
  
  background(0);
  
  i = 0;
  while(i < 10){
    if ( bricks[i] == 1) fill(#FFFF00);
    else fill(0);
    
    rect(i*50, 0, 50, 50); 
    i++;
  }
 
  if ( mousePressed ) {
      if ( bricks[mouseX/50] == 1 && mouseY < 50){
          bricks[mouseX/50] = 0; 
      }
   }
}






// for statement
/*
int [] bricks = new int [10];

void setup() 
{
  int i;
  
  size(500, 400);

  for(i=0; i<10; i++) 
  {
      bricks[i] = 1;
  }
}

void draw()
{
  int i;
  
  background(0);
  
  for(i=0; i<10; i++) 
  {
    if ( bricks[i] == 1) fill(255);
    else fill(0);
    
    rect(i*50, 0, 50, 20); 
  }
 
  if ( mousePressed  )
  {
      if ( bricks[mouseX/50] == 1 )
      {
          bricks[mouseX/50] = 0; 
      }
   }
}
*/

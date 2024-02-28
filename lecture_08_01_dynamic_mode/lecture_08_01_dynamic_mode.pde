// Programming modes
// - static programming mode
// - dynamic programming mode

// variables
int i;

void setup(){
  size(400, 400);
  i = 1;
  println("This is setup function:", i);
}

void draw(){
  println("This is the draw function:", i);
  i = i + 1;
}

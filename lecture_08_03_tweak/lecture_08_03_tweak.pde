// tweak in dynamic programming mode

void setup(){
  size(600, 600);
}

void draw(){
  background(128);
  // face
  fill(#e9e04a); // different way to represent the color
  ellipse(200, 200, 300, 300);
  
  // eyes
  fill(#000000);
  ellipse(129, 166, 65, 65);
  ellipse(266, 163, 64, 64);
  
  // nose
  fill(#18d81c);
  triangle(203, 304, 138, 245, 258, 244);
}

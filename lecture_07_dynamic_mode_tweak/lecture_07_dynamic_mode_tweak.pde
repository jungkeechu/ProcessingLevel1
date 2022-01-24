// tweak in dynamic programming mode

void setup(){
  size(400, 400);
}

void draw(){
  background(158);
  // face
  fill(#e9e04a);
  ellipse(200, 200, 300, 300);
  
  // eyes
  fill(#0a24ea);
  ellipse(129, 166, 65, 65);
  ellipse(266, 163, 64, 64);
  
  // nose
  fill(#18d81c);
  triangle(203, 304, 138, 245, 258, 244);
}

// how to use 'if' statement.

int a = -10;

if (a < 0) { // < > <= >= == !=
  println("a is negative.");  
  println(1);
}

if (a < 0) {
  println("a is negative 2.");
}
println(2);

int b = -1;
if (b > 0){
  println("b is positive");
} else{
  println("b is not positive");
}

int c = 0;
if (c > 0){
  println("c is positive");
} else if(c < 0){
  println("c is negative");
} else {
  println("c is zero");
}

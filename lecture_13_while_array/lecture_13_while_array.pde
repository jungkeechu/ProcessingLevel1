// array variable declaration
int[] numbers = new int[3];

// item assignment
numbers[0] = 90;  // [ index ]
numbers[1] = 150;
numbers[2] = 30;

printArray(numbers);
println(numbers[0], numbers[1], numbers[2]);
//print(numbers[3]); // Error

int a = numbers[0] + numbers[1]; // Sets variable 'a' to 240
int b = numbers[1] + numbers[2]; // Sets variable 'b' to 180 
println(a, b);

int[] numbers2 = { 90, 150, 30 };  // Alternate syntax
int a2 = numbers2[0] + numbers2[1];  // Sets variable 'a' to 240
int b2 = numbers2[1] + numbers2[2];  // Sets variable 'b' to 180
println(a2, b2);


// while statement
int[] numbers3 = { 90, 150, 30 };

int i = 0;
while (i < numbers3.length){ // # of elements of the array
  println(numbers3[i]);
  i++;
}

for(int j = 0; j < numbers3.length; j++){
  println(numbers3[i]);
}

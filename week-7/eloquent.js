// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var my_num = 22;
console.log(my_num*2)

// Short favorite food program.
var food = prompt("Please enter your favorite food: ");
if (food != null) {
    console.log("Hey! That's my favorite too!")
}
// Complete one of the exercises: Looping a Triangle

var hashtags = "#"
for (var number = 0; number <= 7; number = number + 1) {
  console.log(hashtags);
  hashtags = hashtags + "#";
}

// Functions

// Complete the `minimum` exercise.

function min(x,y) {
  if (x <= y)
    return x;
  else
    return y;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = {
	name: "Sean",
	age: 27,
	ff1: "pizza",
	ff2: "burgers",
	ff3: "ice cream",
	quirk: "Big LOL fan"
}
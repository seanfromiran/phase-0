/*
Gradebook from Names and Scores
I worked on this challenge with KB DiAngelo/Sean Massih
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

for(var index in students){
  var name = students[index];
  gradebook[name] = {};
  gradebook[name].testScores=scores[index];
};

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};

// var sum = times.reduce(function(a, b) { return a + b; });
// var avg = sum / times.length;

//function average (array) {
  // var sum = 0;
  // for(var index in array) {
  //   sum += array[index];
  // }
  // return (sum/array.length);
//};

// console.log(gradebook);

// __________________________________________
// Refactored Solution

function average (array) {
  var length = array.length;
  var sum = array.reduce(function(a, b) { return a + b; });
  return sum/length;
};

console.log(average(scores[0]));




// __________________________________________
// Reflect


/*
    What did you learn about adding functions to objects?

    Adding a function to an object as we did on lines 34 and 38 adds a function
    property to the object. It's cool because it's really similar to adding a 
    general property to a function. 

    How did you iterate over nested arrays in JavaScript?

    The "for in" iterator is a great method for accessing and modifying 
    elements of nested arrays. This iterator is really similar to "each" 
    iteration in Ruby, so it was easy to get a grasp of how it works.

    Were there any new methods you were able to incorporate? If so, what were 
    they and how did they work?

    Yes, we refactored the average function and in the process we introdcued 
    the reduce method to get the sum of our array in a more elegant fashion.
    This method allows us to iterate through an array and perform operations 
    on its elements however we want.

*/








// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
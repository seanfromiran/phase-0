// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Caroline Kenworthy.
/* Pseudocode
INPUT: a number
OUTPUT: same number as a string with commas inserted appropriately

Steps
1. create empty variable for new comma'd number
2. turn input number into string
3. check the length of the string
4. if it is greater than 3, we reverse the string.
5. get number (str_len) for string length and store it to a variable
6. WHILE str_len < string divided by 3 (integer division)
     a. slice first three numbers in string,
     b. put into empty variable,
     c. add comma to string
     subtract 3 from str_len
       IF str_len > 0
       slice remaining string
7. reverse the changed string back to normal, and return
*/

// ah, yeah


// Initial Solution

// function separateComma(number) {
//   var num_str = (""+number).split("");
//   var str_len = num_str.length;
//   var new_str = [];
//   while (Math.floor(str_len/3)>0) {
//     console.log(new_str);
//     new_str.push(num_str.pop());
//     new_str.push(num_str.pop());
//     new_str.push(num_str.pop());
//     if(str_len/3>1) {
//       new_str.push(",");
//     }
//     str_len -= 3;
//   }
//   var i = 0;
//   for (;i<str_len;i++) {
//     new_str.push(num_str.pop());
//   }

//   var final_str = new_str.reverse().join('');
//   return final_str;
// }



// Refactored Solution

function separateComma(number) {
  var num_str = (""+number).split("");
  var str_len = num_str.length;
  var new_str = [];
  while (Math.floor(str_len/3)>0) {
    for (i = 0; i < 3; i++) {new_str.push(num_str.pop());}
    if(str_len/3>1) {
      new_str.push(",");
    }
    str_len -= 3;
  }
  for (var i = 0; i < str_len; i++) {new_str.push(num_str.pop());}
  var final_str = new_str.reverse().join('');
  return final_str;
}

console.log(separateComma(433334890));

// Your Own Tests (OPTIONAL)




// Reflection


/*  What was it like to approach the problem from the perspective of 
    JavaScript? Did you approach the problem differently?

    Doing this problem with JavaScript was pretty difficuly because we aren't 
    very experienced with this language yet. We were not able to come up with 
    a working solution without looking at JS documentation and it took a 
    decent amount of trial and error. We approached this problem from a pretty 
    similar perspective to the Ruby problem, especially after some initial 
    failures because we wanted to get a working solution, but we did not look 
    at our old Ruby code. 

    What did you learn about iterating over arrays in JavaScript?

    The syntax is definitely trickier than Ruby. We were especially confused 
    by the fact that the "i" variable on line 68 had to be initialized, while 
    the one on line 62 did not. Generally though, I now feel a lot more 
    comfortable with Javascript iterators.

    What was different about solving this problem in JavaScript?

    The while loop on line 61 struck me as the biggest difference between 
    solutions for this challenge. The code here is more complicated than that 
    for Ruby, so once simple concepts like iterating through an array and 
    decrementing the iterator now need explicit direction.

    What built-in methods did you find to incorporate in your refactored 
    solution?

    We just used more iteration to streamline our code. As I said earlier, we 
    needed to look at documentation to even come up with a working solution.

*/

/*
Pseudocode:
Input: 16 digit integer
Output: Boolean depending on valid cc input or not.
Steps: 
	1. Convert integer into array by storing every place value into its own index
	2. Iterate over array: 
		2.1. Double every other place value, beginning with the second to last 
		digit.
		2.2. If an array element is a two digit integer, split each integer into 
		its places values and put these back into the array. 
		2.3. Sum place values.
	3. Check to see if sum of new place values is divisible by ten.
*/

/*Initial Solution*/
/*function checkCard(card_num) {
	var card_arr = String(card_num).split("");
	var new_arr = []
	if (card_arr.length != 16) {return false}
	else {
		var sum = 0;
		for(var digit in card_arr){
			if (digit%2===0){
				card_arr[digit]*=2;
				console.log(card_arr[digit]);
			};
			if (String(card_arr[digit]).length>1){
				var temp = String(card_arr[digit]).split("");
				new_arr.push(temp[0]);
				new_arr.push(temp[1]);
			}
			else {
				new_arr.push(card_arr[digit]);
			};
		};
		for(var digit in new_arr){
			sum += parseInt(new_arr[digit]);
		}
		console.log(sum);
		if (sum%10===0) {return true}
		else {return false};
	};
} 

console.log(checkCard(4408041234567906));*/

/*Refactored Solution*/

function checkCard(card_num) {
	/*Store each card number to array by digit*/
	var card_arr = String(card_num).split("");
	if (card_arr.length != 16) {return false}
	else {
		var sum = sumNums(card_arr);
		if (sum%10===0) {return true}
		else {return false};
	};
}

function sumNums(our_arr) {
	var sum = 0;
		for(var digit in our_arr){
			/*Double digits with even index*/
			if (digit%2===0){our_arr[digit] *= 2};
			/*Split double digit array elements into their digits*/
			if (String(our_arr[digit]).length>1){
				var temp = String(our_arr[digit]).split("");
				sum += (parseInt(temp[0]) + parseInt(temp[1]));
			}
			else {sum += parseInt(our_arr[digit])};
		};
	return sum;
}

console.log(checkCard(4408041234567901));
/* Reflection       
What concepts did you solidify in working on this challenge? 

In this challenge, I became more comfortable with iterating over arrays and 
converting objects to different data types.

What was the most difficult part of this challenge?

It was difficult to identify and split digits which became two digits after 
mutiplying by 2.

Did you solve the problem in a new way this time?

Yes, much differently. The Ruby solution I have uses a class and a number of 
methods to validate the cc number. With JavaScript, there are two functions
which handle the validation. Also, I put a greater emphasis on coming up with
the sum in the simplest way possible for this challenge. 

Was your pseudocode different from the Ruby version? What was the same and 
what was different?

The general idea between the two pseudocodes is very similar. The only real 
difference is that the pesudocode for my JavaScript is cleaner.
*/



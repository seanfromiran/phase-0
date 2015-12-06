// Person 1
// As a user I need tests that will take a list of numbers and return the 
// mean, median, and mode of all the numbers on the list.  These programs   
// must be able to accomodate lists of varying size.

// Input: An array of numbers 
// Output: The mean, median, and mode of all the numbers on the list.
// Steps: 
//   Mean: Iterate through array and add all elements together, then divide by
//         the number of elements in the array.
//   Median: Sort the array from smallest to largest numbers, then return the 
//           array element which is in the middle of the array.
//   Mode: First, create an empty hash where the keys are numbers which occur 
//         in our array and the values represent the frequency of these 
//         numbers occur in our array. Return the number with the highest 
//         frequency. 

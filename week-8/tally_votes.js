// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Input: Object of objects containing voters votes.
// Output: Results of the tallied votes.
// Steps: 
/* Iterate through var votes. 
      -The first time we come across a name, we create a new property within var votecount
       for the position that has been voted for.
      -If a name already exists as a property, we need to increment the value of this
       property by one when votes are received.
   Return the name for the property with the highest value and assign the name to the 
   correct property in var officers.
*/

// __________________________________________
// Initial Solution

// for (var key in votes) {
//   if(votes.hasOwnProperty(key)) {
//     var val = votes[key];
//     //console.log(val);
//     for (var prop in val) {
//       var valOfVal = val[prop];  
//       // console.log(prop);
//      //  console.log(voteCount);;
//       // console.log(voteCount[prop]);
//       if (voteCount[prop].hasOwnProperty(valOfVal)) {
//         //alert(count_key
//         voteCount[prop][valOfVal] += 1;
//       }
//       //console.log(voteCount[prop][valOfVal]);}
//       else {
//         voteCount[prop][valOfVal] = 1;     
//       }      

//       }
//     }
//   }

// for(var prop in officers){
//   var officePosition = voteCount[prop];
//   var maxint = 0;

//   for(var winner in officePosition){
// //     console.log(prop)
// //     console.log(winner)
//     var count = officePosition[winner];
// //     console.log(count)

//     if (count > maxint){
//       officers[prop] = winner;
//       maxint = count;
//     }
//   }
//  }








// __________________________________________
// Refactored Solution

//For the refactor I set up better variable names and just made it more readable. 
for (var voters in votes) {
  if(votes.hasOwnProperty(voters)) {
    var voterSelection = votes[voters];
 
    for (var officeTitle in voterSelection) {
      var valOfVS = voterSelection[officeTitle]; 
      if (voteCount[officeTitle].hasOwnProperty(valOfVS)) {
        voteCount[officeTitle][valOfVS] += 1;
      }
      else {
        voteCount[officeTitle][valOfVS] = 1;     
      }      
    }
  }
}


for(var officeTitle in officers){ 
  var officePosition = voteCount[officeTitle];
  var maxint = 0;

  for(var winner in officePosition){
    var count = officePosition[winner];
    if (count > maxint){
      officers[officeTitle] = winner;
      maxint = count;
    }
  }
}




// __________________________________________
// Reflection

/*
    What did you learn about iterating over nested objects in JavaScript?

    We had a lot of trouble iterating over nested objects in JavaScript, and 
    I think this was due to less overall exposure to JS compared to Ruby. The 
    work in this challenge was worth it though, accessing and modifying the
    properties/objects of nested objects.

    Were you able to find useful methods to help you with this?

    The methods that we used were the "for in" iterator and .hasOwnProperty. 
    The iterator was crucial for accessing nested elements, while 
    .hasOwnProperty was great for checking to see what properties were already 
    in our object.

    What concepts were solidified in the process of working through this 
    challenge?

    This challenge had a pretty direct goal: access and modify nested objects.
    We spent a lot of time looking over documentation to figure out what to do.
    So I think I can speak for both of us when I say that we are now really 
    familiar with the concepts presented. 

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
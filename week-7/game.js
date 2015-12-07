// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Defeat the dragon in battle.
// Goals: Discover the right sequence of attacks and defenses in battle.
// Characters: The Good Knight and the Evil Dragon.
// Objects: The Knight, Dragon, Knight's sword, Knight's shield
// Functions: Calculate Knight's damage, calculate 
// Dragon's damage.
// 

// Pseudocode
// Our first object is the Good Knight, who will have a damage value and a 
// defense value that gives him a chance to evade the Dragon's damage. Also, he
// will have a health value that will decrement when he receives damage from 
// the Dragon. The Evil Dragon is another object, who also has a damage and 
// defense value with properties similar to the Good Knight. 
// The function calculate Knight's damage will decrement the Dragon's health 
// by the amount of the Knight's damage. Similarly, the function calculate 
// Dragon's damage and decrement Knight's health by the amount of Dragon's 
// damage, if the attack hits.
//
//
//

// Initial Code

knight = {
	damage: 40,
	health: 400
}

dragon = {
	damage: 60,
	health: 400
}

function dragon_attack() {
	if((Math.random()*100)<42) {
		knight.health -= dragon.damage;
	}
}

function knight_attack() {
	dragon.health -= knight.damage;
}

while (dragon.health > 0 && knight.health > 0) {
 	knight_attack();
	dragon_attack();
	if (dragon.health <= 0) {
		console.log("You have defeated the Dragon!");
	}
  	if (knight.health <= 0) {
		console.log("You're roadkill buddy!");
	}
}


// Refactored Code

knight = {
	damage: 40,
	health: 400
}

dragon = {
	damage: 60,
	health: 400
}

function dragon_attack() {
	if((Math.random()*100)<42) {
		knight.health -= dragon.damage;
	}
}

function knight_attack() {
	dragon.health -= knight.damage;
}

while (dragon.health > 0 && knight.health > 0) {
 	knight_attack();
	dragon_attack();
	if (dragon.health <= 0) {console.log("You have defeated the Dragon!");}
  if (knight.health <= 0) {console.log("You're roadkill buddy!");}
}

// Reflection

/*  What was the most difficult part of this challenge?

		Honestly, it was just dealing with JavaScript in general! Still being 
		pretty new to the language and having to deal with all the new syntax 
		compared to Ruby has been a pain. 

    What did you learn about creating objects and functions that interact with 
    one another?

		I felt like I was just working with hashes and calling methods on these 
		hashes. Maybe I'm coming from too much of a Ruby background, but after 
		doing previous challenges I feel like I had a really good understanding of 
		how objects and functions interact from the get go. 

    Did you learn about any new built-in methods you could use in your 
    refactored solution? If so, what were they and how do they work?

		I didn't have time to add additional functionality to my game so I didn't
		incorporate any new built-in methods.

    How can you access and manipulate properties of objects?

		obj.prop_name is a good way to access a certain property of an object. As 
		far as manipulating goes, we can say obj.prop_name = prop_value to change 
		things up.

*/

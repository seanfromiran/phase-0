people = ["Jack Abernethy",	"Mohammad Amin", "Zollie Barnes", "Reuben Brandt", "Dana Breen", 	"Breton Burnett", "Saundra Vanessa Castaneda", "Luis De Castro" ,"Nicolette Chambers", "Kerry Choy", "Nick Davies", "Katherine DiAngelo", "Adrian Diaz", "David Diaz", "Bob Dorff", "Michael Du", "Paul Dynowski", "Jenna Espezua", "Sean Fleming", "Jennifer Gilbert", "Albert Hahn", "Arthur Head", "Jonathan Huang", "Thomas Huang", "Alex Jamar", "Kevin Jones", "Steven Jones", "Cole Kent", "Caroline Kenworthy", "Calvin Lang", "Yi Lu", "David Ma", "Sean Massih", "Tom McHenry", "Alex Mitzman", "Lydia Nash", "Brenda Nguyen", "Matthew Oppenheimer", "Mason Pierce", "Joe Plonsker", "Mira Scarvalone", "Joseph Scott", "Chris Shahin", "Benjamin Shpringer", "Lindsey Stevenson", "Phil Thomas", "Gary Tso", "Ting Wang", "Clinton Weber", "Monique Williamson", "Regina Wong", "Hanah Yendler"]


# Pseudocode
# Input: An array of strings containing names of people in my Course.
# Output: Display the groups along with their members.
# Steps needed: 1. Define a method which takes an array as its argument
# 2. Using the length of the array, define several statements which will output the elements of the array accordingly. 

def create_acct_groups(people)
	people.shuffle!

	our_mod = people.length%4
	(people.length%4).times do |i|
		puts "Group " + i + ": " + people[5*i] + ", " + people[5*i+1] + ", " + people[5*i+2] + ", " + people[5*i+3] + ", " + people[5*i+4]
	end
	(people.length/4).times do |i=our_mod|
		puts "Group " + i.to_s + ": " + people[5*(our_mod-1)+4*i+1] + ", " + people[5*(our_mod-1)+4*i+2] + ", " + people[5*(our_mod-1)+4*i+3] + ", " + people[5*(our_mod-1)+4*i+4]
	end
end

create_acct_groups(people)


=begin
What was the most interesting and most difficult part of this challenge?

The most interesting part of this challenge was figuring out how I wanted to approach it. After looking at some documentation and other resources, I decided that I would output the groups that I created to the terminal. This methodology would allow me to feel like I completed the challenge, and also I could test to see if my code was functioning correctly. Also, I made the decision to store all of the names to an array because this seemed like it would be easy to work with. The difficult part of the challenge was putting all of the names in an array! Coding up the method itself wasn't too much work because I had a good idea for what I wanted to do.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

This challenge was a bit deeper because we had to define the problem and do more digging to even approach it. That being said, once I figured out what I wanted to do for the challenge, I found that it was pretty easy to break it down and write pseudocode. So yea I definitely feel like I am improving!

Was your approach for automating this task a good solution? What could have made it even better?

My code works well for automating the task. One thing is my code leans pretty heavily towards groups of 4, it might be interesting to come up with code that strike a greater balance between groups of 4 and 5.

What data structure did you decide to store the accountability groups in and why?

I decided not to store my accountability groups to a data structure. I thought it was adequate to simply output the groups to the terminal, but if I have time I'll try to come up with a solution with arrays or something.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I looked through the enumerables for quite a bit and I couldn't find a method that would help me. I think this is because the logic for my code is pretty dynamic, so it is hard to simplify.

=end


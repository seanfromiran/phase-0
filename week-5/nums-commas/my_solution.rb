# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#
# The input is an integer
#
# What is the output? (i.e. What should the code return?)
#
# The output is a string where commas have been inserted into the given integer.
#
# What are the steps needed to solve the problem?
# Initially, we must convert our integer to an array, that way it will be easier to insert the commas as needed. Then we need to iterate over the array and insert commas as needed. We insert commas after every 3 places from the right, and while there still remains at least 1 place to the left of those 3 places.
#
#

# 1. Initial Solution

=begin
def separate_comma(our_int)
	nums = our_int.to_s.split(//)
	holder = []
	if nums.length > 3
		while nums.length > 3 do
			holder.push(nums.pop(3))
			holder.push(",")
		end
		while holder.length > 0
			nums.push(holder.pop)
		end
	end
	return nums.join
end
=end



# 2. Refactored Solution

def separate_comma(our_int)
	nums = our_int.to_s.split(//)
	holder = []
	if nums.length > 3
		while nums.length > 3 do
			holder.push(nums.pop(3))
			holder.push(",")
		end
		while holder.length > 0
			nums.push(holder.pop)
		end
	end
	return nums.join
end


# 3. Reflection


=begin
    What was your process for breaking the problem down? What different approaches did you consider?

		I broke the problem down into three parts: the input, the actual functioning of the method, and the output of the method. The first and last part of this is pretty simple becuase we were given a clear outline of what we needed for them. The middle part took more time and consideration because there were a number of approaches I could have taken to solve the problem. To me it made the most sense to use two arrays right off the bat, so I just played around this basic premise.

    Was your pseudocode effective in helping you build a successful initial solution?

		Yes, my pseudocode helped me think about what I actually needed to do to solve this problem. Therefore, the steps I laid out were relevant to solving the problem.

    What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

		Honestly, I didn't use any new Ruby methods to refactor my soluion because my first attempt was really streamlined. 

    How did you initially iterate through the data structure?

		I used a while loop to iterate through my array.

    Do you feel your refactored solution is more readable than your initial solution? Why?

		There are no differences. 

=end


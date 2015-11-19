# Pad an Array

# I worked on this challenge with Jack Abernethy.
# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, an integer, and an optional string.
# What is the output? (i.e. What should the code return?) If our integer is bigger than the length of our array, then we pad with the optional string or nil with elements up until the size of the integer.
# What are the steps needed to solve the problem? Define a method which accepts an array, an integer, and an optional string. Check the size of the array with the integer, if it is less than the integer, we pad the array with nil or the optional string until we have an array with the length of the integer, and return the new array. If the integer is less than the size of the array, we return the original array. 


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
	i = 0
  while i < (min_size-array.length) do
  	array.push(value)
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  j = 0
  changed = []
  while j < array.length do
  	changed.push(array[j])
  	j+=1
  end
  i = 0
  while i < (min_size-array.length) do
  	changed.push(value)
  	i+=1
  end
  return changed
end

a = [1,3,5]
pad(a,4,'outs')
puts a

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
 	range = min_size - array.length
  (0...range).each do |i|
 		array.push(value)
 	end
 	return array
end

def pad(array, min_size, value = nil) #non-destructive
  # copy input array into changed
  changed = array.dup
  diff = min_size - array.length
  diff.times do
  	changed.push(value)
  end
  return changed
end

# 4. Reflection


=begin
  Were you successful in breaking the problem down into small steps?

	Yea, I feel like we did a good job to identify what we needed to accomplish with our method and then broke it down accordingly. Pseudocode is kind of tricky because it can be hard to completely map out a problem before we begin coding.

  Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

	For the destructive method, translating the pseudocode was pretty easy because permanently changing the array was in-line with challenges we have done in the past. The non-destructive method was a little more complicated because we really had to think about how to return a different array than the one we passed to the method.

  Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

	We were able to pass the test with our intial solutin. I think we were able to because we had a clear understanding of the problem, and my background in programming definitely helps!

  When you refactored, did you find any existing methods in Ruby to clean up your code?

	Yes, they ".dup" method was much more simplified compared to our original method which used an each loop to create our new array.

  How readable is your solution? Did you and your pair choose descriptive variable names?

	I feel like our solution is very readable. We definitely tried to use variable names which related to their function.

  What is the difference between destructive and non-destructive methods in your own words?

	When we call a destructive method, the changes made to the variables passed to this method will be permanent. On the flip side, non-destructive methods will only make changes within the method itself and the variables passed to the method will remain unchanged.

=end


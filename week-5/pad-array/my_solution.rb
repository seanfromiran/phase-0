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
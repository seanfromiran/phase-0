# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of a number of strings or numbers.
# What is the output? (i.e. What should the code return?) An array of the most frequently occuring values.
# What are the steps needed to solve the problem? 1. Define a method which accepts an array in the argument.
# 2. Initialize a hash to store the strings/numbers in our array as keys, and the occurunces of theses strings/numbers as values.
# 3. Iterate over the array to add key/value pairs to the hash.
# 4. Return items from the hash with the highest value(s).


# 1. Initial Solution
=begin
def mode (array)
  maximum=0
  counts = Hash.new(0)
  array.each do |value|
    counts[value]+=1
    if counts[value]>maximum
      maximum = counts[value]
    end
  end
  counts.select {|key,value| value == maximum}.keys
end
=end


# 3. Refactored Solution
def mode (array)
  counts = Hash.new(0)
  array.each do |value|
    counts[value]+=1
  end
  counts.select {|key,value| value == counts.values.max}.keys
end



# 4. Reflection
# Calculate the mode Pairing Challenge

# I worked on this challenge with Nicholas Davies.

# I spent 1.5 hours on this challenge.

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


=begin

  Which data structure did you and your pair decide to implement and why?

  We decided to implement a hash because it uses key/value pairs which is identical to a grocery list. An array only seemed like it would be more confusing to keep track of indices

  Were you more successful breaking this problem down into implementable
  pseudocode than the last with a pair? 

  I actually did this pair before I did 5.2, so the pseudocode that I used for 5.2 felt more robust than what I did for this exercise. The more I do pseudocode the more I am able to visualize what I need to do for a challenge.

  What issues/successes did you run into when translating your pseudocode to
  code?

  The main problem for us was accessing keys and values of our hash in an effective way. This was something that we needed help with, so we had to read up on some documentation to complete the challenge.

  What methods did you use to iterate through the content? Did you find any
  good ones when you were refactoring? Were they difficult to implement?

  We stuck to each loops for our iteration. We did not really even think about changing logic for this, but in retrospect, we could have introduced .times or some other ruby syntax for our iteration. I did more exploring of iteration in 5.2!

=end


# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge Sean Massih.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: The sum of all of the numers in the given array.
# Steps to solve the problem.
# - Pass the method an argument.
# - Iterates over each item in the array and adds it to our running total.
# it returns all array items added together
# 1. total initial solution
def total(array)
sum = 0
  array.each do |num|
  sum += num
  end
  return sum
end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a grammatically correct sentence
# Steps to solve the problem.
# initialize an empty string
# add every element of the array to the empty string with a space
# return the sentence with a capitalized first letter and removing the last space
# add a period to the end of the sentence

 # 5. sentence_maker initial solution
 def sentence_maker(string)
  sentence = ""
	string.each do |word|
   	sentence += word.to_s + " "
  end
  return sentence.capitalize.rstrip + "."
 end


# 6. sentence_maker refactored solution

def sentence_maker(string)
	sentence = ""
	string.each do |word|
    sentence += word.to_s + " "
  end
  return full_sentence(sentence)
 end

def full_sentence(sentence)
  return sentence.capitalize.rstrip + "."
end
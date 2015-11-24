# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

=begin
class Die
  def initialize(labels)
    @labels = []
  	if labels.length < 1
  		raise ArgumentError.new("Your number is too small")
  	else
  		labels.each { |i| @labels.push(i) }
  	end
    return @labels.length
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.shuffle[0]
  end
end
=end


# Refactored Solution

class Die
  # I made a minor change here because I felt like I could confine things to the else statement. This way we don't initialize an array that won't be used if we do not enter the else statement.
  def initialize(labels)
    if labels.length < 1
      raise ArgumentError.new("Your number is too small")
    else
      @labels = []
      labels.each { |i| @labels.push(i) }
      return @labels.length
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.shuffle[0]
  end
end

# Reflection


=begin
What does this exercise teach you about making code that is easily changeable or modifiable?

This exercise teaches me that 

What new methods did you learn when working on this challenge, if any?

N/A. I did look through documentation, but when refactoring my solution I couldn't find any new methods to implement into my code.

What concepts about classes were you able to solidify in this challenge?

I feel like class variables were solidified in this challenge. I was having problems in the initialize method, until I realized I needed to initialize @labels to an empty array if I wanted to add elements to it. 

=end

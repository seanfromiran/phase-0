# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

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

# Refactored Solution








# Reflection


=begin
What does this exercise teach you about making code that is easily changeable or modifiable?



What new methods did you learn when working on this challenge, if any?



What concepts about classes were you able to solidify in this challenge?



=end

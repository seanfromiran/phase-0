# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: The class is first initialized with an integer to be guessed (hopefully). When we make a guess, we input an integer as well.
# Output: The guess method will output a hint to our guess, whether it be high, low, or on the money. The solved? method will return true when a correct answer
# Steps: For initialize and solved? we will return class variables so it seems easy enough. The guess method, however, will need some control-flow to help us compare the guess to the answer.


# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
  	if guess < @answer
  		@solved = false
  		return :low
  	elsif @answer < guess
  		@solved = false
  		return :high
  	else
  		@solved = true
  		return :correct
  	end
  end

  def solved?
  	@solved
  end
end
=end





# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
  	guess == @answer ? @solved = true : @solved = false
		if @answer < guess
  		return :high
  	elsif @answer > guess
  		return :low
  	else
  		return :correct
  	end
  end

  def solved?
  	@solved
  end
end




# Reflection


=begin
    How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

		We can relate instance variables to characteristics of real objects because when both are created they have a certain set of properties. We expect a car to have a color, make, and model, similar to instance variables. Methods compare to actions of objects because both are ways that we can change or use our variables/characteristics to gain new information or alter the objects. For example, when we paint a car we can change it's color from blue to maroon, 

    When should you use instance variables? What do they do for you?


    Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?



    Why do you think this code requires you to return symbols? What are the benefits of using symbols?



=end


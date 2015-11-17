# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

=begin
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Your number is too small")
    else
      @sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end
=end




# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Your number is too small")
    else
      @sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 4. Reflection


=begin
    What is an ArgumentError and why would you use one?

    An ArgumentError tells us that the arguments we have passed to our method are incorrect, and as a result we are unable to run the method.

    What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

    I have not used the raise method before, this seems like it will be a very valuable tool in the future. Everything was very straightforward with this challenge, as you can see there is not too much code!

    What is a Ruby class?

    A class is designed to lay the foundation for an object. Within a class, we define variables as well as methods which utilize and transform these variables. 

    Why would you use a Ruby class?

    Classes allow us to create a microcosm within the Ruby universe. By creating characteristics and a way to change these traits we are given a lot of power by the Ruby programming language.

    What is the difference between a local variable and an instance variable?

    An unique instance variable will be attributed to every new object within our class. A local variable relates to a method and it only relates to this particular method itself. Contrastingly, an instance variable can be accessed by all methods within a class.

    Where can an instance variable be used?

    An instance variable can be used by every method within a class, except for methods decalred as static.

=end

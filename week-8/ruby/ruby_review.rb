# I worked on this challenge by myself.
# This challenge took me 1 hour.

# Pseudocode
=begin
Input: An integer
Output: Returns true if integer is part of fibonacci sequence, false otherwise.
Steps: Check the square root of (5 times our integer squared plus 4) as well as
the square root of (5 times our integer squared minus 4), if either produces an
integer, then the given integer is part of the fibonacci sequence.
=end
# Initial Solution

=begin
def is_fibonacci?(num)
	if (sqrt(5*num**2+4)!=sqrt(5*num**2+3))
		return true
	elsif (sqrt(5*num**2-4)!=sqrt(5*num**2-5))
		return true
	else 
		return false
	end
end

def sqrt(a)
  begv = 1
  endv = a
  while endv > begv + 1
     mid = (endv + begv)/2
     if mid ** 2 <= a
        begv = mid
     else
        endv = mid
     end
  end
  return begv
end
=end


# Refactored Solution

def is_fibonacci?(num)
	egg_1 = (5*num**2+4)
	egg_2 = (5*num**2-4)
	# sqrt method always returns integers, so we need to check the sqrt for one  
	# value smaller to see if the same integer is returned.
	((sqrt(egg_1)!=sqrt(egg_1-1)) || (sqrt(egg_2)!=sqrt(egg_2-1))) ? true : false
end

def sqrt(a)
  begv = 1
  endv = a
  while endv > begv + 1
     mid = (endv + begv)/2
     mid ** 2 <= a ? begv = mid : endv = mid
  end
  return begv
end





# Reflection

=begin
    What concepts did you review or learn in this challenge?

		After doing a lot of Javascript as of late, it was nice to do a little bit 
		of Ruby just to stay familiar with the syntax. I also worked with methods 
		and control flow. 

    What is still confusing to you about Ruby?

		I was not really confused by anything specific to Ruby in this challenge.
		Getting a hold of the logic and the math for this problem was definitely 
		more confusing.

    What are you going to study to get more prepared for Phase 1?

		My JavaScript feels like it needs some work right now. I am going to 
		continue to review objects and functions in JavaScript.

=end


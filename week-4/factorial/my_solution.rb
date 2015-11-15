# Factorial

# I worked on this challenge with Joseph Scott.

# Your Solution Below
def factorial(number)
  temp = number
  if temp==0
  	return 1
  else
  	while temp > 1
  		temp-=1
  		number*=temp
  	end
  	return number
  end
end
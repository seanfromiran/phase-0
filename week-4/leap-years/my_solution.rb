# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(integer)
	if (integer%4==0) & (integer%100==0) & (integer%400!=0)
		return false
	elsif integer%4==0 
		return true
	else
		return false
	end
end
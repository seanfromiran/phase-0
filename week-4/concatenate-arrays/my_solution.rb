# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
	our_array = array_1
	array_2.each do |newguy|
		our_array.push(newguy)
	end
  return our_array
end
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create hash using the items from the string as the keys
  # set default value for keys to 1
  # print the list to the console using puts
  # output: hash




def create_list(string)
	words = string.split(' ')
	list = Hash.new{}
	words.each do |word|
		list[word] = 1
	end
	return list
end
=begin
puts create_list("carrots apples cereal pizza")
=end


# Method to add an item to a list
# input: item name and optional quantity
# steps: A method that takes at least a string, and optionally an integer, and adds these to the hash.
# output: A hash with the updated item.



def add_item(list, string, integer=1)
	list[string] = integer
	return list
end

# puts add_item(create_list("carrots apples cereal pizza"), "potato", 3)

# Method to remove an item from the list
# input: Item name
# steps: Identify the key and remove our hash. If the item isn't on our list, the method produces an error message.
# output: Our hash with the item removed, it if exists.

def remove_item(list, string)
	list.delete(string)
	return list
end

# puts remove_item(create_list("carrots apples cereal pizza"), "carrots")

# Method to update the quantity of an item
# input: Item name and updated quantity
# steps: Find they key in our hash and change its value to the new quantity.
# output: Our hash with the updated quantity of the item.

def update_quantity(list, string, integer)
	list[string]=integer
	return list
end

# puts update_quantity(create_list("carrots apples cereal pizza"), "carrots", 3)
# Method to print a list and make it look pretty
# input: Our hash
# steps: Iterate over the hash and output the key-value pairs in a beautiful way.
# output: Key-value pairs from our hash.

def print_list(list)
	list.each do |x,y|
		puts x + ": " + y.to_s
	end
end

print_list(create_list("carrots apples cereal pizza"))
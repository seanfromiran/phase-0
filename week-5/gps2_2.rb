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


#puts create_list("")

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

our_hash = create_list("")


add_item(our_hash, "lemonade", 2)
add_item(our_hash, "tomatoes", 3)
add_item(our_hash, "onions", 1)
add_item(our_hash, "ice cream", 4)

=begin
puts our_hash
=end

# puts add_item(create_list("carrots apples cereal pizza"), "potato", 3)

# Method to remove an item from the list
# input: Item name
# steps: Identify the key and remove our hash. If the item isn't on our list, the method produces an error message.
# output: Our hash with the item removed, it if exists.

def remove_item(list, string)
	list.delete(string)
	return list
end

remove_item(our_hash, "lemonade")


# puts remove_item(create_list("carrots apples cereal pizza"), "carrots")

# Method to update the quantity of an item
# input: Item name and updated quantity
# steps: Find they key in our hash and change its value to the new quantity.
# output: Our hash with the updated quantity of the item.

def update_quantity(list, string, integer)
	list[string]=integer
	return list
end

update_quantity(our_hash, "ice cream", 1)

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

print_list(our_hash)

#print_list(create_list("carrots apples cereal pizza"))

=begin

    What did you learn about pseudocode from working on this challenge?

		Pseudocode is a great starting point for coding because it makes me think about the entire problem at hand. Once I have outlined what I need to do to bring the challenge to completion, it becomes a lot easier.

    What are the tradeoffs of using Arrays and Hashes for this challenge?

		Arrays could be used for this project, but they lack the defauly key/value relationship of hashes. I feel like it would quickly become confusing to keep track of indicies and such with arrays. Hashes are also nice because our information is easily accessible by keywords and clear names.

    What does a method return?

		A method can return explicitly if we use a return statement somewhere in out method. For example:
=end
	def method(int)
		return int*2
	end
=begin
		If no return statement is present, then the method will return the value of the last statement.

    What kind of things can you pass into methods as arguments?

		Methods accept all objects as arguments.

    How can you pass information between methods?

		When we call a method from within another method, the method which makes the call can pass information to the other method.

    What concepts were solidified in this challenge, and what concepts are still confusing?

		The concepts of hashes and iteration were really made clear this challenge. I feel confident about everything presented in this challenge.

=end

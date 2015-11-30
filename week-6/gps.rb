# Your Names
# 1) Sean Massih
# 2) N/A

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

=begin
def serving_size_calc(item_to_make, order_quantity)
  # Hash to hold item and its corresponding number of ingredients.
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # Integer which allows us to check for argument errors.
  error_counter = 3

  # Iterator to check that item_to_make is valid.
  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  # Raise error if error_counter greater than 0.
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")

  # Store serving size and the remainder of quantity/size to variables.
  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  # We have two cases: no remainder and some remainder. If there is no 
  # remainder then we output how many of the item we can make. If there is a 
  # remainder then we output how many of the item we can make as well as other 
  # possible items that we could make with the leftovers.
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
=end

#Refactored
def serving_size_calc(item_to_make, order_quantity)

  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if library[item_to_make] == nil
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library["#{item_to_make}"]
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  when 1..4
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: cookie"
  when 5..6
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: cookie, cake"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: cookie, cake, pie"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


=begin
    What did you learn about making code readable by working on this challenge?

    Always try to go for the simplest approach when coding. If I can identify 
    the essence of what I am trying to do and forget everything else, my code 
    will be the most readable.

    Did you learn any new methods? What did you learn about them?

    Not a method per se, but I didn't know that we could perform operations on
    variables inside of a string. This seems like a great way to generate 
    data dynamically. 

    What did you learn about accessing data in hashes? 

    This was pretty basic hash stuff so I did not learn anything knew.

    What concepts were solidified when working through this challenge?

    Case statements, hashes, and displaying variables in strings were all 
    solidified in this challenge.

=end


# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Coleby Kent.
# I spent .. hours on this challenge.

# Pseudocode

# Input: Integer
# Output: True or False
# Steps: 
# Check if the integer is exactly 16 digits, if it isn't return an argument error
# Turn integer into an array of individual integers
# Iterate over the array, analyze every other integer and multiply by 2
# Any integer in the array greater than or equal to 10, split into two integers (10 = 1,0)
# Replace original integer with two new integers
# Sum all elements and check if divisible by 10
# If it's divisible by 10, return true, else false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(integer)
#     integer = integer.to_s.split("")
#     integer.map! {|i| i.to_i}
    
#     if integer.length != 16
#       raise ArgumentError.new("Your number isn't 16 digits!")
#     else
#       16.times do |i|
#         if i%2==0
#           integer[i]*=2
#         end
#       end
      
#       integer.each do |num|
#         if num.to_i > 9
#           num1 = num.to_s.split("")
#           integer.delete(num)
#           integer << num1[0].to_i
#           integer << num1[1].to_i
#         end
#       end
        
#       @sum = 0
        
#       while integer.length > 0
#         @sum += integer[0]
#         integer.delete_at(0)
#       end
    
#     end
#   end
  
#   def check_card
#     if @sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end
  
# card = CreditCard.new(4408041234567901)
# card = CreditCard.new(4408041234567906)



# Refactored Solution


class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s.split("")
    @card_number = @card_number.map! {|i| i.to_i}
    
    if @card_number.length != 16
      raise ArgumentError.new("Your number isn't 16 digits!")
    end
  end
  
  def check_card
    @card_number.each_index {|i| @card_number[i]*=2 if i%2==0}
      
    @card_number.each do |num|
      if num.to_i > 9
        num_s = num.to_s.split("")
        @card_number.delete(num)
        @card_number.push(num_s[0].to_i, num_s[1].to_i)
      end
    end
        
    sum = 0
        
    @card_number.length.times {|i| sum+=@card_number[i]}
    
    sum%10 == 0 ? true : false
  end
end
  
card = CreditCard.new(4408041234567901)
card = CreditCard.new(4408041234567906)






# Reflection

=begin

    What was the most difficult part of this challenge for you and your pair?

		The most difficult part for me was just getting out of the gates. We 
		started pretty slowly but once we got going our code started looking 
		really nice

    What new methods did you find to help you when you refactored?

		I didn't use any new methods for the refactoring, we did make it look
		significantly more Ruby though.

    What concepts or learnings were you able to solidify in this challenge?

    I am now more confident with arrays, class variables, and switching 
    between object types. Looking at the refactored code makes me proud 
    because it looks very Ruby to me.

=end


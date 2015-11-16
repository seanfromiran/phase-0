# Display greeting
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts
puts "Hello " + first_name + " " + middle_name + " " + last_name + "!"

# Suggest bigger and better number
puts "What is your favorite number?"
fav = gets.to_i + 1
puts "May I suggest a new favorite number of " + fav.to_s + "? It's bigger and better!"

=begin


    How do you define a local variable?

		We define a local varible inside of the method and we use the "=" symbol to make this definition.

    How do you define a method?

		We define a method by using def "method name"(optional argument(s)) at the beginning and the keyword "end" at the end. We put the body of the method and the operations we want it to perform in between these keywords.

    What is the difference between a local variable and a method?

		A local variable simply stores a piece of information while a method will perform an operation on information.

    How do you run a ruby program from the command line?

		Type ruby, followed by a space, and then the name of the ruby file. Make sure you are in the directory of the ruby file in the command line.

    How do you run an RSpec file from the command line?

		Type rspec, followed by a space, and then the name of the ruby file that you would like to rspec. Again, make sure you are in the directory of the file.

    What was confusing about this material? What made sense?

		Everything was pretty straightforward except for the bigger number exercise. It was kind of confusing because I had to convert the data type twice to get rid of the errors in my code.

[Math](https://github.com/seanfromiran/phase-0/tree/master/week-4/math)
[Address](https://github.com/seanfromiran/phase-0/tree/master/week-4/address)
[Define Method](https://github.com/seanfromiran/phase-0/tree/master/week-4/define-method)

=end

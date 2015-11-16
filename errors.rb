# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

cartmans_phrase = "Screw you guys " + "I'm going home."

# 1. What is the name of the file with the error?
#   The file name is errors.rb
# 2. What is the line number where the error occurs?
#   Line 8
# 3. What is the type of error message?
#    Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    Unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
#    The interpreter did not expect the equals sign between "I'm going home" and cartmans_phrase
# 6. Why did the interpreter give you this error?
#    We can't assign a variable this way, the variable name needs to come at the beginning of the assignment.

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#
# 2. What is the line number where the error occurs?
#   Line 185
# 3. What is the type of error message?
#   Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#   Unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#   It occurs all the way at the end of the code.
# 6. Why did the interpreter give you this error?
#   Our while statement needed an end.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#   Line 58
# 2. What is the type of error message?
#   Undefined local variable or method 'south_park' for main:Object (NameError)
# 3. What additional information does the interpreter provide about this type of error?
#   None!
# 4. Where is the error in the code?
#   It occurs when we try to call south_park.
# 5. Why did the interpreter give you this error?
#   We are telling the interpreter to call an undefined method/variable, so it doesn't know what to do.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#   Line 73
# 2. What is the type of error message?
#   Undefined method 'cartman' for main:Object 
# 3. What additional information does the interpreter provide about this type of error?
#    (NoMethodError)
# 4. Where is the error in the code?
#   The error occurs when we try to call cartman, an undefined method.
# 5. Why did the interpreter give you this error?
#   We are trying to call a method that is undefined, so the interpreter doesn't know what to do with this command.

# --- error -------------------------------------------------------

=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end
=end


#cartmans_phrase()

# 1. What is the line number where the error occurs?
#   Line 88
# 2. What is the type of error message?
#   Wrong number of arguments 
# 3. What additional information does the interpreter provide about this type of error?
#   (1 for 0) (Argument Error) from errors.rb:92:in `<main>'
# 4. Where is the error in the code?
#   Line 92, it occurs when we try to call cartmans_phrase with an argument.
# 5. Why did the interpreter give you this error?
#   The interpreter gave us this error because we can only call cartmans_phrase as such, and not with any arguments!

# --- error -------------------------------------------------------

=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says()
=end


# 1. What is the line number where the error occurs?
#   Line 107
# 2. What is the type of error message?
#   Wrong number of arguments 
# 3. What additional information does the interpreter provide about this type of error?
#   (0 for 1) (Argument Error) from errors.rb:111:in `<main>'
# 4. Where is the error in the code?
#   The error occurs when we try to call cartman_says without passing it any arguments.
# 5. Why did the interpreter give you this error?
#   We need to pass this method some sort of string to display.



# --- error -------------------------------------------------------

=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end

# 1. What is the line number where the error occurs?
#   Line 134
# 2. What is the type of error message?
#   Wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
#   (1 for 2) (ArgumentError) from errors.rb:138:in `<main>'

# 4. Where is the error in the code?
#   Line 138
# 5. Why did the interpreter give you this error?
#   The error occurs when we try to call cartmans_lie with only one argument, it needs two arguments seperated with a comma.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#   Line 156
# 2. What is the type of error message?
#   String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
#   (TypeError) from errors.rb:156:in `<main>'

# 4. Where is the error in the code?
#   The error occurs right when we reach the string that occurs after the *.
# 5. Why did the interpreter give you this error?
#   The interpreter attempts to multiply a number by a string, an illegal action because it is not defined. If we switch the order it would be ok because this tells the system to output the string 5 times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#   Line 172
# 2. What is the type of error message?
#   `/': divided by 0
# 3. What additional information does the interpreter provide about this type of error?
#    (ZeroDivisionError) from errors.rb:172:in `<main>'

# 4. Where is the error in the code?
#   When the interpreter sees 0 in the denomiator of our division operation.
# 5. Why did the interpreter give you this error?
#   We cannot divide by 0 because it is undefined!

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   Line 189
# 2. What is the type of error message?
#   `require_relative': cannot load such file -- /home/seanfromiran/phase-0/phase-0/cartmans_essay.md
# 3. What additional information does the interpreter provide about this type of error?
#   (LoadError)
# 4. Where is the error in the code?
#   When this file attempts to load the specified file and cannot find it.
# 5. Why did the interpreter give you this error?
#   We get this error because the file does not exist on my computer, and therefore is not going to be in any specified path.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin


    Which error was the most difficult to read?

		The error with the missing end statement was the most confusing because the error occured at the end of the document. The other errors were really straightforward because I have practiced with methods a decent amount.

    How did you figure out what the issue with the error was?

		I just sat and looked at the code for a second, after seeing only one end statement I knew that something was wrong and figured out that the while statement needed an end as well.

    Were you able to determine why each error message happened based on the code? 

		Yes, I was able to look at the code and figure out what was wrong with it for all of the examples.

    When you encounter errors in your future code, what process will you follow to help you debug?

		First inspect the error message for any clues. After we have a good idea of what is causing the error, we can then look at the code itself and mess around with what is causing the error. stackoverflow is also usually really helpful for answering error questions.
=end

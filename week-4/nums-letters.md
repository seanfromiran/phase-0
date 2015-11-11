What does puts do?

"puts" is one of several ruby commands that allows us to output information to the terminal. This command returns our output to the console as well as a new line, followed by nil.

What is an integer? What is a float?

An integer is a whole number, i.e. the decimal portion of our number is always equal to 0. Floats are numbers which have relevant information in the decimal places, therefore they will contain a decimal point.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division will give us an answer that includes floating point decimals, this is answer that we typically expect from division. Integer division provides the lagest integer value that we can actually use. What I mean by this is the "real" result of 7/2 is 3.5, but in some situations we can't use .5 of something. Imagine you are at the grocery store and you want to buy .5 apples, the cashier would look at you like you're crazy. Integer division removes the craziness, this process produces 7/2=3, i.e. we always round down.

```ruby
#Hour in an average year
puts 365.25*24

#Minutes in a decade
puts 365.25*10*24*60
```
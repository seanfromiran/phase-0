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
How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles these operators depending on the data type. Integer addition returns integers, and so on, the only curiosity comes up with integer division, which will round down the division of integers to the nearest integer (i.e. 7/2=3). The other data type we are concerned about is float, here, we end up with a float after performing float addition, subtraction, etc (7/2=3.5.

What is the difference between integers and floats?

An integer contains no information in the decimal places. Conversely, floats always have information in the decimal place(s).

What is the difference between integer and float division?

I outline this difference in the first question.

What are strings? Why and when would you use them?

Strings are a sequence of characters. We use strings when we want to display or store a sequence of characters. Strings give us the ability to hold onto any reasonable sequence of characters that we wish!

What are local variables? Why and when would you use them?

A local variable points to something which is stored in local memory. We use local variables when we want to refer to something by an identifier and not explicitly. This process can save time and energy!

How was this challenge? Did you get a good review of some of the basics?

This challenge was pretty easy, but it did give me a good review of the basics.

[Defining Variables](https://github.com/seanfromiran/phase-0/blob/master/week-4/defining-variables.rb)
[Simple String](hhttps://github.com/seanfromiran/phase-0/blob/master/week-4/simple-string.rb)
[Basic Math](https://github.com/seanfromiran/phase-0/blob/master/week-4/basic-math.rb)
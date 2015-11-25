=begin #Reflection


    What are these methods doing?

		On line 50, we create a new instance of the Profile class, and this will 
		assign values for the class varibales age, name, and occupation. On line 
		55, we call the what_is_age method on our profile instance, and this 
		returns the class variables age.

    How are they modifying or returning the value of instance variables?

		When we call initialize, we are creating an instance of the Profile class, 
		and this creates our class variables. With what_is_age, we are returning 
		the value for @age which has been set. 

    What changed between the last release and this release?

		We got rid of the what_is_age method, and replaced it with an attribute 
		which defines it as read only, so now we can append .age to the end of an 
		instance of Profile to return our age.

    What was replaced?

		"attr_reader :age" replaced the what_is_age method.

    Is this code simpler than the last?

    Yes, the three lines in what_is_age were replaced by the one line attribute
    .

    What changed between the last release and this release?

		We made the class variable "age" both readable and writable using the
		attribute property. 

    What was replaced?

		We replaced the change_my_age= method, with "attr_writer :age".

    Is this code simpler than the last?

    Yes, similar to before we were able to replace 3 lines of code with a 
    single line.

    What is a reader method?

		A reader method allows us to access, but not permanently change, a class 
		variable outside of the class itself. 

    What is a writer method?

		A writer method allows us to change class variables outside of the class. 
		However, we can not return or display the class variable outside of the 
		class if it is write only.

    What do the attr methods do for you?

		They greatly streamline our code by allowing us to define all of our 
		writer and reader methods on a couple of lines.

    Should you always use an accessor to cover your bases? Why or why not?
    What is confusing to you about these methods?

    It seems like it is always a good idea to use an accessor on class 
    variables because it makes us think about how we are going to use them. We 
    should always think about if we want to maintain privacy. These methods 
    are pretty straightforward.

=end

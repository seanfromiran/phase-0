# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
    new_array = Array.new
    source.map {|word| new_array << word if (word.is_a? String) && (word.include?thing_to_find)}
     new_array
end


def my_hash_finding_method(source, thing_to_find)
  hash_array = Array.new
  source.each {|key, value| hash_array<< key if value == thing_to_find}
  hash_array
end


# Identify and describe the Ruby method(s) you implemented.
=begin
  -I used EACH, as a one-stop shop to iterate through both the Array and the Hash.
  - I used the SHOVEL method to get values that met the boolean into the output array.
  - I used is_a? method in the first portion of the problem because the include? method (described below) won't work on an integer. I put the is_a? method at the first part of an && boolean so the program would bypass the second statement if the first isn't true.
  -Finally I used a include? method to determine if the value INCLUDED the letter I was looking for
=end

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.each_index do |i|
    if source[i].is_a?(Integer)
      source[i]+=thing_to_modify
    end
  end
  return source
end

#puts my_array_modification_method!(i_want_pets, 1)

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|k,v| source[k]+=thing_to_modify}
  return source
end

#puts my_hash_modification_method!(my_family_pets_ages, 2)

=begin
Identify and describe the Ruby method(s) you implemented.
For my array method, I used an each iterator as well as the is_a? method to identify which elements of my array were integers. The hash method uses an each iterator which allows us to increment all the values of our hash.
=end





# Person 3
def my_array_sorting_method(source)
  strings = source.grep(String)
  ints = source.grep(Fixnum)
  sorted_strings = strings.sort { |x,y| x <=> y }
  sorted_ints = ints.sort { |x,y| x <=> y }
  sorted_source = sorted_strings.unshift(sorted_ints).flatten!
end


def my_hash_sorting_method(source)
  src_ary = source.to_a
  src_ary.sort_by! { |x,y| y }
end


=begin
Identify and describe the Ruby method(s) you implemented.
- grep: Calling grep on 'source' with the 'String' argument returns an array of the strings in the 'source' array.
It excludes anything in 'source' that isn't a string (in this case, it excludes the integers). The same idea applies
on the next line, where I call grep on 'source' to return an array of the Fixnums in 'source'.
- unshift: Calling unshift on 'sorted_strings' with the argument 'sorted_ints' inserts the array
of sorted integers ('sorted_ints') at the beginning of the 'sorted_strings' array.
- flatten!: Calling flatten! merges the 'sorted_ints' array with the 'sorted_strings' array so that the
whole thing is a one-dimensional array. I used the destructive flatten! method to do the operation in place,
but it's probably not necessary since the block on line 45 is returned and assigned to a single variable.
- sort: The sort method compares elements one after another and the block tells the method how to sort the elements.
- to_a: I called to_a on the method's argument to convert the input from a hash to an array of 2-element arrays.
This is necessary because the method that I use next takes arrays and not hashes.
- sort_by!: I called sort_by! to sort the 2-element arrays by the value of the second element.
=end


# Person 4
=begin
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end
=end


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
=begin
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end
=end


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#

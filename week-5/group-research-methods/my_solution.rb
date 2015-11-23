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
#
#
#

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

# Identify and describe the Ruby method(s) you implemented.
#
#
#


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


# Identify and describe the Ruby method(s) you implemented.
#
#
#


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

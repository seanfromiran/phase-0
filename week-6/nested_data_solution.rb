# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data [:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


new_array = []

number_array.each do |element|
  if element.kind_of?(Array)
    new_array << element.map! {|inner| inner += 5}
  else
    new_array << element += 5
  end
end

#Refactored
p number_array.map! {|element|
  
  element.kind_of?(Array) ? element.map! {|inner| inner += 5} : element += 5}

p new_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

opt_array = []
temp1_array = []
temp2_array = []

startup_names.each do |element|
  if element.kind_of?(Array)
    temp1_array = element.map! {|inner_element|
      if inner_element.kind_of?(String)
        inner_element.concat("ly")
      else inner_element.kind_of?(Array)
        temp2_array = inner_element.map! {|inner_inner|
          inner_inner.concat("ly")}
      end}
    opt_array << temp1_array
  else
    opt_array << element.concat("ly")
  end
end

#Refactored
p startup_names.map! { |element| element.kind_of?(Array) ? element.map!                 {|inner_element| inner_element.kind_of?(Array) ? inner_element.map! {|inner_inner|  inner_inner.concat("ly")} 
  : inner_element.concat("ly")} : element.concat("ly")}

p opt_array

# Reflection

=begin
    What are some general rules you can apply to nested arrays?

    After doing this exercise, I realized that it is usually easier to start 
    from the inside and move out when we try to access inner elements of 
    nested arrays. Also, nested if/else statements are pretty essential to 
    correctly iterating over nested arrays. 

    What are some ways you can iterate over nested arrays?

    We used the enumerable methods each and map in conjunction with if/else 
    statements to iterate over nexted arrays. Our refactored solution used the 
    ternary operator to eliminate if/else statements

    Did you find any good new methods to implement or did you re-use one you 
    were already familiar with? What was it and why did you decide that was a 
    good option?

    We used the ternary operator to help refactor our code and reduce it to a 
    more elegant solution. We were already familiar with this method, but the 
    solution it produced was too good to pass up.

=end

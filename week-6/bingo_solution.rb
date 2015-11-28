# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 3 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Input: Nothing
  # Output: A random letter from (b,i,n,g,o) and a random number between 1-100
  # Steps: Generate a string combining the random letter and random number

# Check the called column for the number called.
  # Input: The string generated by the previous method.
  # Output: Return true if the number is in the column, false if not.
  # Steps: Check the current bingo board by retrieving the array corresponding 
  # to the letter given. Return a value based on what is in the column. 

# If the number is in the column, replace with an 'x'
  # Input: None
  # Output: A new bingo board with the updated 'x', if the number is in the 
  # column. 
  # Steps: Check the given column for the given number, if the number is 
  # found, replace it with an 'x'. 

# Display a column to the console
  # Displays all elements of a column.

# Display the board to the console (prettily)
  # Display the board array by array, with a new line between each.

# Initial Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @call =  ['B','I','N','G','O'].shuffle[0] + Array(1..100).shuffle[0].to_s
  end

  def check
    @num = @call.slice(1..-1).to_i
    let = @call.slice(0)
    case let
      when 'B'
        check_column(0)
      when 'I'
        check_column(1)
      when 'N'
        check_column(2)
      when 'G'
        check_column(3)
      when 'O'
        check_column(4)
    end

    5.times do |i| 
      print "["
      4.times {|j| print @bingo_board[i][j].to_s + ', '}
      puts @bingo_board[i][4].to_s + "]"
    end

  end

  def check_column(col_num)
    @bingo_board.map do |x| 
      if x[col_num] == @num
        x[col_num] = 'X'
      end
    end
  end
        
end
=end


# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @call =  ['B','I','N','G','O'].shuffle[0] + Array(1..100).shuffle[0].to_s
  end

  def check
    @num = @call.slice(1..-1).to_i
    let = @call.slice(0)
    set_let(let)

    5.times do |i| 
      print "["
      4.times {|j| print @bingo_board[i][j].to_s + ", "}
      puts @bingo_board[i][4].to_s + "]"
    end
  end

  def set_let(letter)
    case letter
      when 'B'
        check_column(0)
      when 'I'
        check_column(1)
      when 'N'
        check_column(2)
      when 'G'
        check_column(3)
      when 'O'
        check_column(4)
    end
  end

  def check_column(col_num)
    @bingo_board.map {|x| x[col_num] = 'X' if x[col_num] == @num}
  end     
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check


#Reflection


=begin
    How difficult was pseudocoding this challenge? What do you think of your 
    pseudocoding style?

    Pseudocoding for a class is much harder than for a single method. For this 
    challenge, we really needed to think about how our methods are going to 
    interact and the input and output which will be passed between them. My 
    pseudocoding style is definitely still developing, I feel like I could be 
    more specific sometimes but I just need more exposure to the process.

    What are the benefits of using a class for this challenge?

    Using a class here is very helpful because we can use class variables and 
    methods to help us achieve the complexities of a bingo board. If we had to 
    do everything in a single method, it would be really messy and unreadable.

    How can you access coordinates in a nested array?

    One simple way to access coordinates of a nested array is to explicitly 
    type out the indices of the arrays. For example, in the code block from 
    lines 99 to 103 I use .times to iterate over my arrays, accessing all 
    elements from all subarrays. Additionally, the check_column method on line 
    121 uses the fact that a "column" will be all elements in the subarrays 
    which share the same index.   

    What methods did you use to access and modify the array?

    The map method is essential for modifying the array because it lets us 
    execute a code block on the array. As I said in the previous question, we 
    can use specific indices to access elements in the array.

    Give an example of a new method you learned while reviewing the Ruby docs. 
    Based on what you see in the docs, what purpose does it serve, and how is 
    it called?

    I didn't incorporate the method .zip, but I did read about it in the Ruby 
    docs. This method is interesting because it allows us to transform arrays 
    into new arrays, based on the indices of the original arrays. For example, 
    if we zip a four element array with three other arrays of four elements, 
    we will produce four new arrays made up of the 0/1/2/3 index of each of 
    the original four arrays.

    How did you determine what should be an instance variable versus a local 
    variable?

    I chose instance variables when I knew I would be using them across 
    methods within the class. Local variables are useful when we only need 
    them within a method.

    What do you feel is most improved in your refactored solution?

    Taking set_let out of the check method made the code a lot more readable. 

=end



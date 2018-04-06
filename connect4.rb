class Connect4
  attr_accessor :board, :turn, :win

  def initialize
    @board = [[_,_,_,_,_,_,_,_],
              [_,_,_,_,_,_,_,_],
              [_,_,_,_,_,_,_,_],
              [_,_,_,_,_,_,_,_],
              [_,_,_,_,_,_,_,_],
              [_,_,_,_,_,_,_,_]]

    @player = 0
    @position = []
    show_board
    start_game
  end

#Board is a grid (6 rows, 7 columns),
#Indices 0-6 left to right, 0-5 bottom to top
#Turns alternate

  def start_game
    loop do
      turn #loop turns from X to O

      if win?
        puts "Player #{player} wins!"
        break #end the turn loop and the game
      end
    end
  end

  #incomplete, need to test if @board array displays or some sort of border is needed
  def show_board
  end

  #Ask player which column to play marker
  def play_column
    #Makes players into X and O as their markers
    puts "It's #{player.even? ? marker = "X" : marker = "O"}'s turn!'"
    puts "Choose a column to play your marker (1-7)"
    answer = gets.chomp
  end

  #Method to mark column
  #Column starts at index 0, use z to count to 0 to drop marker to bottom of board
  def place_marker(marker, column)
    column -= 1   #index 0
    z = @board.length - 1
    until @board[z][column] == "_"
      z -= 1
    end
    @board[x][column] = marker
  end

  #Take input 1-7 from play_column and place_marker on board
  def move(marker)
    column = 0
    until column > 0 && column < 8
      column = play_column.to_i
    end
    @position = place_marker(marker, column)
  end

  #Turn takes place, X or O, piece is played, board is shown, player is switched
  def turn
    marker = @turn_count.even? ? marker = "X" : marker = "O"
    move
    print "Current board: "
    show_board
    @player +=1
  end



  #Win occurs if one of the four win conditions occurs
  def win?
    horizontal || vertical || diagonal_left || diagonal_right
  end

  #horizontal - 4 in a row in rows - incomplete
  def horizontal
    column.include?("XXXX") || column.include?("OOOO") #true or false for 4 in a row x's or o's
  end

  #vertical -  4 in a row in columns - incomplete
  def vertical
    column.include?("XXXX") || column.include?("OOOO") #true or false for 4 in a row x's or o's
  end

  #diagonal_left & diagonal_right - 4 in a row across diagonals - incomplete
  def diagonal_left
  end

  def diagonal_right
  end


end

new_game = Connect4.new

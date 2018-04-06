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

  def show_board
  end

  #Ask player which column to play piece
  def play_column
    #Makes players into X and O as their markers
    puts "It's #{player.even? ? marker = "X" : marker = "O"}'s turn!'"
    puts "Which column would you like to play? (1-7)"
    answer = gets.chomp
  end

  def place_marker(marker)
  end

  def move
  end

#Turn takes place, X or O, piece is played, board is shown, player is switched
  def turn
    marker = @turn_count.even? ? marker = "X" : marker = "O"
    place_marker(marker)
    print "Current board: "
    show_board
    @player +=1
  end



  #Win occurs if one of the four win conditions occurs
  def win?
    horizontal || vertical || diagonal_left || diagonal_right
  end

  #horizontal - 4 in a row in rows
  def horizontal
  end

  #vertical -  4 in a row in columns
  def vertical
  end

  #diagonal_left & diagonal_right - 4 in a row across diagonals
  def diagonal_left
  end

  def diagonal_right
  end


end

new_game = Connect4.new

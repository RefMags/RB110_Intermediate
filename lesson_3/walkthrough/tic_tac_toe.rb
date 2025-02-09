# Set up and display the board
## Displaying the board
def display_board(brd)
  puts " "
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]} "
  puts "     |     |"
  puts ".....+.....+......"
  puts "     |     |"
  puts "  #{brd[3]}  |  #{brd[4]}  |  #{brd[5]} "
  puts "     |     |"
  puts ".....+.....+......"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]} "
  puts "     |     |"
  puts ""
end

## Representing the board state
def initialize_board
  new_board = {}
  (1..9).each { |cell_num| new_board[cell_num] = ' '}
  new_board
end

board = initialize_board
display_board(board)

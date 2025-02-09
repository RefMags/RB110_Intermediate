require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts " => #{msg}"
end

# Set up and display the board
## Displaying the board
def display_board(brd)
  system "clear"
  puts " "
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]} "
  puts "     |     |"
  puts ".....+.....+......"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[3]}  |  #{brd[6]} "
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
  (1..9).each { |cell_num| new_board[cell_num] = INITIAL_MARKER}
  new_board
end

def empty_cells(brd)
  brd.keys.select {|cell_num| brd[cell_num] == INITIAL_MARKER }
end

# Player move
def player_moves!(brd)
  board_cell = ''
  loop do
    prompt " Choose a board cell #{empty_cells(brd).join(', ')}:"
    board_cell = gets.chomp.to_i

    if empty_cells(brd).include?(board_cell)
      break
    else
      prompt " Sorry, that's not a valid choice"
    end

  end
  brd[board_cell] = PLAYER_MARKER
  binding.pry
end

def computer_move!(brd)
  board_cell = empty_cells(brd).sample
  brd[board_cell] = COMPUTER_MARKER
end

# Checks if board is full
def board_full?(brd)
  empty_cells(brd).empty?
end

def someone_won?(brd)
  false
end

board_cells = initialize_board
display_board(board_cells)

loop do
  player_moves!(board_cells)
  computer_move!(board_cells)
  display_board(board_cells)

  break if someone_won?(board_cells) || board_full?(board_cells)
end

require 'pry'

SCORES = { "Player" => 0, "Computer" => 0 }
GAME_FIVE = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +   # columns
                [[1, 5, 9], [3, 5, 7]]                # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts " => #{msg}"
end

def joinor(arr)
  return "" if arr.empty?
  return arr[0].to_s if arr.size == 1

  *prefix , last = arr
  [prefix.join(', '), last].join(arr.size == 2 ? 'or' : ', or ')
end

def reset_scores(scores)
  SCORES.each_key { |key| SCORES[key] = 0}
end
# rubocop:disable Metrics/AbcSize
def display_board(brd)
  # Keeping the game stationary after every move selection
  system "clear"
  prompt "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts " "
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]} "
  puts "     |     |"
  puts ".....+.....+......"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]} "
  puts "     |     |"
  puts ".....+.....+......"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]} "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

## Representing the board state
def initialize_board
  new_board = {}
  (1..9).each { |cell_num| new_board[cell_num] = INITIAL_MARKER }
  new_board
end

def empty_cells(brd)
  brd.keys.select { |cell_num| brd[cell_num] == INITIAL_MARKER }
end

# Player move
def player_moves!(brd)
  board_cell = ''
  loop do
    prompt " Choose a board cell #{joinor(empty_cells(brd))}:"
    board_cell = gets.chomp.to_i

    break if empty_cells(brd).include?(board_cell)
    prompt " Sorry, that's not a valid choice"
  end

  brd[board_cell] = PLAYER_MARKER
  # binding.pry
end

def computer_move!(brd)
  if computer_defense?(brd)
    binding.pry
    p "#{computer_defense?(brd)} either offensive or defensive"
    brd[computer_defense?(brd)] = COMPUTER_MARKER
  else
    board_cell = empty_cells(brd).sample
    brd[board_cell] = COMPUTER_MARKER
  end
end

# HELPER METHODS for computer defense
def player_potential_wins(brd)
  potential_computer_wins = WINNING_LINES.select do |line|
    brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).include?(INITIAL_MARKER)
  end
end

def computer_potential_wins(brd)
  potential_computer_wins = WINNING_LINES.select do |line|
    brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).include?(INITIAL_MARKER)
  end
end

# Detects the possible defense for Computer AI
def computer_defense?(brd)
  if !player_potential_wins(brd).empty?
    player_win = player_potential_wins(brd).sample
    secure_defense_cell = player_win.find {|cell| brd[cell] == ' '}
  elsif !computer_potential_wins(brd).empty?
    computer_win = computer_potential_wins(brd).sample
    secure_computer_win = computer_win.find {|cell| brd[cell] == ' '}
  else
    nil
  end
end

# Checks if board is full
def board_full?(brd)
  empty_cells(brd).empty?
end

# we need detect_winer should be a boolean
def someone_won?(brd)
  !!detect_winner(brd)
end

# increment winner score per round
def keeping_score(brd)
  current_winner = detect_winner(brd)
  return "Its a tie!" if current_winner.nil?

  SCORES[current_winner] += 1
  return "#{current_winner} wins this round! Score: #{SCORES[current_winner]}"
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# brd = {1 => 'X', 2 => ' ', 3 => 'X', 4 => 'O', 5 => 'X', 6 => ' ', 7 => ' ', 8 => ' ', 9 => 'O'}
# winning_line = [[1, 2, 3],[4, 5, 6], [7, 8, 9]] + [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + [[1, 5, 9], [3, 5, 7]]
# Main game loop
loop do
  board_cells = initialize_board

  loop do
    display_board(board_cells)

    player_moves!(board_cells)
    break if someone_won?(board_cells) || board_full?(board_cells)

    computer_move!(board_cells)
    break if someone_won?(board_cells) || board_full?(board_cells)
  end

  display_board(board_cells)

  # detect winner should return a string such as #Player won
  if someone_won?(board_cells)
    prompt " #{keeping_score(board_cells)} "
  else
    prompt " It's a tie!"
  end

  grand_winner = SCORES.key(GAME_FIVE)
  if grand_winner
    prompt " #{grand_winner} reached #{GAME_FIVE} wins first and is the winner! "
    reset_scores(SCORES)
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"

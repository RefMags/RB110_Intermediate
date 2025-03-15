require 'pry'

def computer_defense(board)
  # lines with
  potential_wins = WINNING_LINES.select do |line|
    board.values_at(*line).count('X') == 2 && board.values_at(*line).include?(" ")
  end

  return nil if potential_wins.empty?

  choosen_line = potential_wins.sample

  empty_position = choosen_line.find {|position| board[position] == ' '}

end



WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +   # columns
                [[1, 5, 9], [3, 5, 7]]                # diagonals

brd = {1 => 'X', 2 => ' ', 3 => 'X', 4 => 'O', 5 => 'X', 6 => ' ', 7 => ' ', 8 => ' ', 9 => 'O'}
p computer_defense(brd)  #== [1, 2 , 3]

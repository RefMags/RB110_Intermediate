require 'pry'

def computer_defense(board)
  # potential loses for the computer == potential winning lines for the player
  potential_loses = WINNING_LINES.select do |line|
    board.values_at(*line).count('X') == 2 && board.values_at(*line).include?(" ")
  end


  if !!potential_loses.empty?
    potential_win = WINNING_LINES.select do |line|
      board.values_at(*line).count('O') == 2 && board.values_at(*line).include?(" ")
    end
        #  binding.pry
    secure_win_cell = potential_win[0].find {|cell| board[cell] == ' '}
  else
    choosen_line = potential_loses.sample
    empty_cell = choosen_line.find {|cell| board[cell] == ' '}
  end
end


WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +   # columns
                [[1, 5, 9], [3, 5, 7]]                # diagonals

brd1 = {1 => 'X', 2 => ' ', 3 => 'X', 4 => 'O', 5 => 'X', 6 => ' ', 7 => ' ', 8 => ' ', 9 => 'O'}
p computer_defense(brd1)  #== 7 or 2

brd2 = {1 => ' ', 2 => ' ', 3 => 'X', 4 => ' ', 5 => 'X', 6 => ' ', 7 => 'O', 8 => ' ', 9 => 'O'}
p computer_defense(brd2)  #== 8

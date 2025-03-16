require 'pry'
def player_potential_wins(brd)
   # potential loses for the computer == potential winning lines for the player
  potential_player_wins = WINNING_LINES.select do |line|
    brd.values_at(*line).count('X') == 2 && brd.values_at(*line).include?(" ")
  end
end

def computer_potential_wins(brd)
  potential_computer_wins = WINNING_LINES.select do |line|
    brd.values_at(*line).count('O') == 2 && brd.values_at(*line).include?(" ")
  end
end

def computer_defense(brd)
  # binding.pry?
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


WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +   # columns
                [[1, 5, 9], [3, 5, 7]]                # diagonals

brd1 = {1 => 'X', 2 => ' ', 3 => 'X', 4 => 'O', 5 => 'X', 6 => ' ', 7 => ' ', 8 => ' ', 9 => 'O'}
# # p player_potential_wins(brd1)
p computer_defense(brd1)  #== 7 or 2

brd2 = {1 => ' ', 2 => ' ', 3 => 'X', 4 => ' ', 5 => 'X', 6 => ' ', 7 => 'O', 8 => ' ', 9 => 'O'}
# p computer_potential_wins(brd2)
p computer_defense(brd2)  #== 8

brd3 = {1 => ' ', 2 => ' ', 3 => 'X', 4 => ' ', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '}
p computer_defense(brd3)  #== either 1, 2, 4, 5, 6, 7, 8, 9

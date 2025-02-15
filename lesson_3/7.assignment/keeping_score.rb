# Determining the winner

winner = ["Player", "Computer"]
# player_score = 0
# computer_score = 0
game_counter = 1

# loop do
#   current_winner = winner.sample

#   if current_winner == "Player"
#     player_score += 1
#     puts "Round #{game_counter}: Player score #{player_score}"
#   else
#     computer_score += 1
#     puts "Round #{game_counter}: Computer score #{computer_score}"
#   end

#   game_counter += 1

#   break if player_score == 5 || computer_score == 5
# end

# if player_score == 5
#   puts "Player reached 5 wins first"
# else
#   puts "Computer reached 5 wins first!"
# end


loop do
  winner_score = { "PLAYER" => 0, "COMPUTER" => 0 }
  current_winner = winner_score.keys.sample
  p current_winner

  if current_winner == "PLAYER"
    winner_score[current_winner] += 1
  else
    winner_score[current_winner] += 1
  end

  game_counter += 1
  break if winner_score["PLAYER"] == 5 || winner_score["COMPUTER"] == 5

end

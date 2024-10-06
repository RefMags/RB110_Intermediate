loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  # puts answer == 4 ? "That's correct" : "Wrong answer. Try again!"

  break p("That's correct") if answer == 4
  p "Wrong answer. Try again!"
end

# loop do
#   number = rand(1..10)   # a random number between 1 and 10
#   puts 'Hello!'
#   if number == 5
#     puts 'Exiting...'
#     break
#   end
# end


# counter = 0

# loop do
#   break if counter == 0
#   puts 'Hello!'
#   counter += 1
# end

alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end

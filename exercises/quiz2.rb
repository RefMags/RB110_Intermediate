numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
# counter = 0

loop do
  current_number = numbers[counter].to_i

  odd_numbers << current_number unless current_number.even?

  counter += 1
  break if counter == numbers.size
end

p odd_numbers
# => [3, 5, 7, 11, 13, 15]

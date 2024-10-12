
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
# Incorrect population
# odd_numbers, even_numbers = numbers.partition do |number|
#                               number.even?
#                             end


# p odd_numbers # => [2, 4, 8, 10, 14]
# p even_numbers # => [1, 5, 7, 13]

# Correct population
even_numbers, odd_numbers = numbers.partition do |number|
                              number.even?
                            end
# p odd_numbers # => [2, 4, 8, 10, 14]
p even_numbers # => [1, 5, 7, 13]
p odd_numbers

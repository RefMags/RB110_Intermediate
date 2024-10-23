# def square_digits(value)
#   string_value = value.to_s
#   squared_digits = ''
#   counter = 0

#   loop do
#     break if counter == string_value.size
#     current_value = string_value[counter]
#     squared_digits << (current_value.to_i ** 2).to_s
#     counter += 1
#   end

#   squared_digits.to_i
# end

# p square_digits(0) ==    0
# p square_digits(64) == 3616
# p square_digits(3212) == 9414

def square_digits(value)
  arr_value = value.to_s.chars

  squared_digits = arr_value.map { |digit| (digit.to_i ** 2).to_s }
  squared_digits.join.to_i
end

p square_digits(0) == 0
p square_digits(64) == 3616
p square_digits(3212) == 9414

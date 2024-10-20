# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# numbers

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
   "#{index} #{numbers.inspect}  #{number}"
  p numbers.pop(1)
end

p numbers

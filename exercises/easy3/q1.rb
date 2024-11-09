
# puts "==> Enter the 1st number:"
# first_number = gets.chomp.to_i
# # 25
# puts  "==> Enter the 2nd number:"
# second_number = gets.chomp.to_i
# # 15
# puts "==> Enter the 3rd number:"
# third_number = gets.chomp.to_i
# # 20
# puts "==> Enter the 4th number:"
# fourth_number = gets.chomp.to_i
# # 17
# puts "==> Enter the 5th number:"
# firth_number = gets.chomp.to_i
# # 23
# puts "==> Enter the last number:"
# last_num = gets.chomp.to_i
# # 17
# five_numbers = [first_number, second_number, third_number, fourth_number, firth_number]
# if five_numbers.include?(last_num)
#   puts "The number #{last_num} appears in #{five_numbers}."
# else
#   puts "The number #{last_num} does not appear in #{five_numbers}."
# end


def prompt()
  prompts = %w(1st 2nd 3rd 4th 5th last)
  numbers = []
  prompts.each do |ask|
    puts "==> Enter the #{ask} number:"
    numbers.push(gets.chomp.to_i)
  end
  numbers
end

requested_numbers = prompt()
p requested_numbers

last = requested_numbers.pop
appear = requested_numbers.include?(last) ? "appear" : "does not appear"
puts "The number #{last} #{appear} in #{requested_numbers}"

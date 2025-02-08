require "pry-byebug"
def expanded_form(number)
  string_number = number.to_s
  return_array = []

  string_number.chars.each_with_index do |char, index|
    next if char == "0"

    current_char_digit = char.to_i
    position = string_number.length - index - 1
    digit_position = current_char_digit * (10 ** position)
    return_array << digit_position

  end
  # binding.pry
  return_array.join(" + ")
end

p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'

# # ask for 5 numbers
def ask_numbers()
  counter = 1
  numbers_collection = []

  loop do
    break if counter == 6

    puts "Enter the #{counter} number:"
    user_answer = gets.chomp.to_i
    numbers_collection << user_answer

    counter += 1
  end

  numbers_collection
end

five_numbers = ask_numbers()
# # ask for the 6th number
puts "Enter the 6th number"
last_num = gets.chomp.to_i


# # check if 6th number appears in the array collection

if five_numbers.include?(last_num)
  puts "The number #{last_num} appears in #{five_numbers}"
else
  puts "The number #{last_num} does not appear in #{five_numbers}"
end

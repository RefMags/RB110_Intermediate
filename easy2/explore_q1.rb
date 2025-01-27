def print_name(name = "Teddy")
  puts "Please enter a name:"
  puts (user_name = gets.chomp ? user_name : name)
end

puts print_name()

# age = rand(20..200)

# puts "#{name} is #{age} years old"

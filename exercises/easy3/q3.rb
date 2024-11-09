def prompt(msg)
  puts "#{msg}"
end

prompt("Please write word or multiple words:")
user_input = gets.chomp

count = user_input.count('^ ')
prompt( "There are #{count} characters in #{user_input}.")

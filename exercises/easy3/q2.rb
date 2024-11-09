# prompt method
def prompt(msg)
  puts "==> #{msg}"
end

# get user input
num1, num2 = %w(first second).map do |index|
  prompt("Enter the #{index} number:")
  gets.chomp.to_i
end

puts num1, num2

# Perform operation
OPERATORS = %i( + -  * /  %  ** )

OPERATORS.each do |op|
  calculation = [num1, num2].inject(op)
  prompt("#{num1} #{op} #{num2} = #{calculation}")
end

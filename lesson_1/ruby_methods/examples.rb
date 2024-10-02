# `each`

hsh = {lion: 'cub', cow: 'calf', goat: 'kid'}

hsh.each do |key, value|
	puts "The #{key}'s baby is called a #{value}"
end


'Japan'.split.each do |char|
  puts char * 2
end

[4, 5, 6].each do |num|
  num.even?
end


# select
numbers = [4, 5, 6]
numbers.select do |num|
	num.even?
end


# Map

[4, 5, 6].map do |num|
	num * 2
end

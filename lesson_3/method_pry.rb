require 'pry-byebug'

# a = 0

# until a > 5
#   puts a
#   binding.pry
#   a += 1
# end

# puts a

def word_map(sentence)
	words = sentence.split
	map = {}

	words.each do |word|
		# binding.pry
		if map.key?(word)
			map[word] += 1
		else
			map[word] = 1
		end
	end

	map
end

return_of_word = word_map('I want what I want')
p return_of_word.size

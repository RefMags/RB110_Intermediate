def isPangram(sentence)
	alphabets = ("a".."z").to_a
	downcase_sentence = sentence.downcase

	# alphabets.each do |alphabet|
	# 	return false if !downcase_sentence.include?(alphabet)
	# end
	# true
  alphabets.all? {|alpha| sentence.include?(alpha)}


end


p isPangram('The quick brown fox jumps over the lazy dog.') #== true
p isPangram('This is not a pangram.') == false

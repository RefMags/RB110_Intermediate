def three_vowels(word)
  word_copy = ''
  vowels = 'aeiou'
  vowel_counter = 0
  counter = 0

  loop do
    break if counter == word.size
    current_character = word[counter]

    if !vowels.include?(current_character)
      word_copy << current_character
    else
        if vowel_counter < 3
          word_copy << current_character
          vowel_counter += 1
        end
    end

    counter += 1
  end
  word_copy
end


# def three_vowels(word)
#   result = ''
#   vowels = 'aeiou'
#   vowel_counter = 0

#   word.each_char do |char|
#     if vowels.include?(char)
#       result << char if vowel_counter < 3
#       vowel_counter += 1 if vowel_counter < 3
#     else
#       result << char
#     end
#   end
#   result
# end

# puts three_vowels("bananabanana") == "bananabnn"
# puts three_vowels("tropical") == "tropical"
# puts three_vowels("tropicalia") == "tropical"
# puts three_vowels("BliMp123") == "BliMp123"
puts three_vowels("eyelash2!!!") == "eyelash2!!!"

VOWELS = 'aeiou'
def longest_vowel_substring(source)
  return 0 if source.empty?

  vowels_length = []
  substring = ''
  new_source = source + 'v'

  new_source.each_char do |char|
    if VOWELS.include?(char)
      substring << char
    else
      vowels_length << substring.size if !substring.empty?
      substring = ''
    end
  end

  vowels_length.empty? ? 0 : vowels_length.max
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5

=begin
PART 2
VOWELS = 'aeiou'
def longest_vowel_substring(source)
  return 0 if source.empty?

  size_of_longest_vowel_sub = 0
  current_substring_length = 0
  new_source = source + 'v'

  new_source.each_char do |char|
    if VOWELS.include?(char)
      current_substring_length += 1
    else
      (size_of_longest_vowel_sub = current_substring_length) if current_substring_length > size_of_longest_vowel_sub
      current_substring_length = 0
    end
  end

  size_of_longest_vowel_sub
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
=end

def count_substrings(str1, str2)
  substrings = []
  current_substring = ""
  length = str2.size

  str1.each_char do |char|
    if str2.include?(char)
      # current_substring << char until current_substring.size != length
      p "the #{current_substring} length is #{current_substring.length}"
      current_substring << char
      p current_substring
      p "after adding #{char} the #{current_substring} length is #{current_substring.length}"
    end
  end
end




count_substrings('babab', 'ba') #== 1
# p count_substrings('babab', 'ba') == 2
# p count_substrings('babab', 'b') == 3
# p count_substrings('babab', 'x') == 0
# p count_substrings('babab', 'x') == 0
# p count_substrings('', 'x') == 0
# p count_substrings('bbbaabbbbaab', 'baab') == 2
# p count_substrings('bbbaabbbbaab', 'bbaab') == 2
# p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1

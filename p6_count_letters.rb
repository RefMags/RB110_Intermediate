ALPHABETS = ("a".."z").to_a
# def count_letters(str)
#   return {} if str.empty? || str.chars.all? { |char| !ALPHABETS.include?(char) }
#   result = {}

#   str.each_char do |char|
#     if ALPHABETS.include?(char)
#       char_count = str.count(char)
#       result[char] = char_count
#     end
#   end
#   result
# end


# expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1}
# p count_letters('woebegone') == expected

# expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2,
#             'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
# p count_letters('lowercase/uppercase') == expected

# expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1}
# p count_letters('W. E. B. Du Bois') == expected

# # p count_letters('x') == {'x' => 1}
# p count_letters('') == {}
# p count_letters('!!!') == {}


arr = 'W. E. B. Du Bois'.chars.uniq
lowercase = arr.find_all {|ele| ALPHABETS.include?(ele)}
p lowercase.tally

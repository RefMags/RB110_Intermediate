def palindrome?(input)
  input == input.reverse
end

ALPHANUMERICS = [("a".."z").to_a, ("0".."9").to_a].flatten
def real_palindrome?(input)
  input = input.downcase.chars.select {|letter| ALPHANUMERICS.include?(letter)}
  palindrome?(input)
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

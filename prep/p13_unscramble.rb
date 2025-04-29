def unscramble(str1, str2)
  # strA = str1.chars.sort
  # strB = str2.chars.sort

  str2.chars.all? {|letter| str1.include?(letter)}
end

p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true

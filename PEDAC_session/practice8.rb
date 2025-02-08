def unique_string_characters(str1, str2)
  unique_chars = ""

  str1.chars.each do |char|
    unique_chars << char if !str2.include?(char)
  end

  str2.chars.each do |char|
    unique_chars << char if !str1.include?(char)
  end

  unique_chars
end

puts unique_string_characters("xyab","xzca") == "ybzc"
puts unique_string_characters("a","z") == "az"
puts unique_string_characters("abcd","de") == "abce"
puts unique_string_characters("abc","abba") == "c"
puts unique_string_characters("xyz","zxy") == ""

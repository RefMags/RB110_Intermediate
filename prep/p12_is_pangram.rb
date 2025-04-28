def is_pangram(str)
  alphabets = ("a".."z").to_a

  uniq_letters = str.downcase.chars.uniq.select {|letter| alphabets.include?(letter)}.sort

  # p uniq_letters
  uniq_letters == alphabets ? true : false
end

p is_pangram('The quick, brown fox jumps over the lazy dog!') == true
p is_pangram('The slow, brown fox jumps over the lazy dog!') == false
p is_pangram("A wizard’s job is to vex chumps quickly in fog.") == true
p is_pangram("A wizard’s task is to vex chumps quickly in fog.") == false
p is_pangram("A wizard’s job is to vex chumps quickly in golf.") == true

my_str = 'Sixty zippers were quickly picked from the woven jute bag.'
p is_pangram(my_str) == true

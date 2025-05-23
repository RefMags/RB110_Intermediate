# /*
# Numerical palindrome
# A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward. Examples of numerical palindromes are:

# 2332
# 110011
# 54322345
# You'll be given 2 numbers as arguments: (num, s). Write a function which returns an array of s number of numerical palindromes that come after num. If num is a palindrome itself, it should be included in the count.

# Single digit numbers will NOT be considered numerical palindromes.

=begin
P: INPUT: two argument of numbers (num, s)
 RETURN : Return an array
      - of s (second arg) number of numeral palindromes
      - If a number is palindrome we should include into the array
      - a single digit does not count as a palindrome

EX: 6,4 => [11,22,33,44]

DS: iterate a number of times, until i reach the size s of an empty array that i populate with palindrome numbers, Convert the integer to a string
- array

ALGO:
- CREATE an empty array, counter
-  DETERMINE all the palindrome
  - ITERATE until we have the size of empty array `palindromes` equal to length of s
    - FOR each loop, check if the number is a palindrome,
    ** Conversions
      - If it is, add to the `palindromes`
      - IF not , increment by 1

- RETURN the palindrome when size is of length s

=end

def palindrome(num, target)
  palindromes = []
  counter = num

  until palindromes.size == target
    string_counter = counter.to_s
    if string_counter == string_counter.to_s.reverse
       palindromes << counter if counter > 9
    end
    counter += 1
  end

  palindromes
end

puts palindrome(6,4) == [11,22,33,44] # true
puts palindrome(75,1) == [77] # true
puts palindrome(101,2) == [101,111] # true
puts palindrome(0,4) == [11,22,33,44] # true

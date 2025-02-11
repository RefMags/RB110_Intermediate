=begin
  ### Problem:
- We have to create a `palindrome_substrings` method that returns palindrome substrings from a string. We should consider all possible palindromes of size greater than 2. The palindrome words are case sensitive.
- Explicit: palindrome words are case sensitive
		- Input an string output an array of substrings

### DS: (Remember include the implementation details for the "hard" parts)
-

### Algo
-

=end
def all_substrings(str)
  allSubstring = []
  starting_index = 0

  while (starting_index <= str.size - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      allSubstring << substring
      num_chars += 1
    end
    starting_index += 1
    break if starting_index == str.size
  end
  allSubstring
end

def is_palindrome?(str)
  return str == str.reverse
end

def palindrome_substrings(str)
  palindrome_subs = []

  substrings_arr = all_substrings(str)
  substrings_arr.each do |substring|
    palindrome_subs << substring if is_palindrome?(substring)
  end
  palindrome_subs
end


all_substrings("abcddcbA")
p is_palindrome?("cdc")
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=begin
Write a function groupAnagrams(words) that takes an array of words
as input and groups the anagrams together. Anagrams are words that
have the same characters but in a different order.

Your function should return an array of arrays, where each inner
array represents a group of anagrams. For words that do not have
anagrams, they should be grouped into an array together.

The order of the groups and the order of words within each group
does not matter.

*/

P:
INPUT: array of words
RETURN: Array of arrays : nested
- group into anagrams annd non-anagrams
EX:
 ['listen', 'silent', 'enlist', 'hello', 'olhel']:
  sort letters alphabetically
  filter uniq letters
  create a hash, anagram as key and value as all letters that are anagrams of key
  no anagram
DS:
Approach 1:
- Array input: Sort each word in array
  - Sort each word and
  - Create a key/value pair key == anagram value == element

# Approach 2:
  - Use a case statment
  - CHECK if sorted word count more than 1, those will be case for all possible anagrams
  - IF sorted counts once, those would be non-anagrams
    - FOR each word sort, and compare to each possible anagram
    - ELSE add to non-anagram list

- RETURN array of all anagrams and non-anagrams

ALGO:
- CREATE an empty hash to keep track of anagrams
- SORT each word
  - CHECK if word is included in hash to be modified,
    - IF not, CREATE a key/value
    - IF key is present add to values array

    # Key/values with single element would be non-anagrams, FILTER for those
- RETURN the hash,
  - FILTER for values whose array size is 1,
  - ADD them together ie flatten them

  # FILTER key values of size > 1 these are anagrams,
    - SELECT all the values whose size is one

  # ADD the non-anagrams to all the anagrams array
=end


def groupAnagrams(words)
  anagram_groups = {}

  words.each do |word|
    sorted_key = word.chars.sort.join
    if anagram_groups.has_key?(sorted_key)
      anagram_groups[sorted_key].push(word)
    else
      anagram_groups[sorted_key] = [word]
    end
  end

  all_groups = anagram_groups.values

  # selecting only anagrams
  multi_words_group = all_groups.select {|sub| sub.size > 1 }

  # selecting non anagrams
  single_word_group = all_groups.select {|sub| sub.size == 1 }.flatten

  multi_words_group.push(single_word_group)
end

# puts groupAnagrams(['listen', 'silent', 'enlist', 'hello', 'olhel'])
# Output: [['listen', 'silent', 'enlist'], ['hello', 'olhel']]

# puts groupAnagrams(['abc', 'bca', 'cab', 'def', 'fed'])
# # Output: [['abc', 'bca', 'cab'], ['def', 'fed']]
puts groupAnagrams(['cat', 'dig', 'tac', 'god', 'act'])
# # Output: [['cat', 'tac', 'act'], ['dig', 'god']]

 puts groupAnagrams(['listen', 'silent', 'enlist', 'hello', 'olhel'])
# Output: [['listen', 'silent', 'enlist'], ['hello', 'olhel']]

# puts groupAnagrams(['abc', 'bca', 'cab', 'def', 'fed'])
# # Output: [['abc', 'bca', 'cab'], ['def', 'fed']]
#  puts groupAnagrams(['cat', 'dig', 'tac', 'god', 'act'])
# # Output: [['cat', 'tac', 'act'], ['dig', 'god']]

=begin
Given a word, return a copy of that word, removing every vowel after the first three:

three_vowels("tropical") == "tropical"
three_vowels("tropicalia") == "tropical"
three_vowels("BliMp123") == "BliMp123"
three_vowels("eyelash2!!!") == "eyelsh2!!!"
=end


=begin

Explicit:
- You have a word
- return a copy of the word
  - after removing a every vowel
  - the vowel should be after counting the first three.
Input: string
Output: string

Example:

Data structure
input: string >> array
output: array >> string

Algorithm:
- Initialize a string.
- Convert a string to array(str_arr)
- Initialize an array of vowels.
- Iterate through the str_arr
- Check if the element of str_arr is included in the array of vowels.
- Count the element that are present in array of vowels.
- Keep the first three vowels and drop those beyond

=end

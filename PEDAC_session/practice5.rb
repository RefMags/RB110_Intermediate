=begin
  DS: array of string elements, string element of the array... string of alphabets,
   character of the string versus character all alphabets, integer position,
   "yes or no", integer , put the integer count into the array(output)



Algo:

- CREATE a string of alphabets #
- CREATE an empty array
- TRANSFORM the argued array. For each word:
	- FIND the position of a letter of string elements
    - iterate through the string element and specifiy each index position
    -
	- COMPARE the position of the letter in the string element to that in the alphabet
    -
	- COUNT the positions that satify my YES
- RETURN

=end

def solve(input)
  alphabets = "abcdefghijklmnopqrstuvwxyz"
  counts = []

  # Iterate over each word in the input array
  input.each do |word|
    match_count = 0
    # convert the word to lower case to handle case sensitivity
    word.downcase.chars.each_with_index do |char, index|
      # find the position of character in the alphabets string
      alphabet_index = alphabets.index(char)
      # Compare the index of the characters in the word with its position in the alphabet
      if alphabet_index == index
        match_count += 1
      end
    end
    counts << match_count
  end
  counts
end


# p solve(["abodea", "ABc"])
puts solve(["abode","ABc","xyzD"]) == [4,3,1] # true
puts solve(["abide","ABc","xyz"]) == [4,3,0] # true
puts solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7] # true
puts solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3] # true

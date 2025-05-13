# We're receiving a set of messages in code. The messages are sets of text strings, like:
# "alakwnwenvocxzZjsf"
# Write a method to decode these strings into numbers.
# The decoded number should be the number of lowercase characters between the first
# two uppercase characters. If there aren't two uppercase characters, the number should be 0.

=begin
P: A method that INPUTS an array of text strings and RETURNS an array of integers
- For each text string decode to a number based on the number of lowercase letters
between the first two uppercase characters
- An empty array returns an empty array


Ex: ['ZoL', 'heLlo', 'XX'] => for "ZoL": 1 lowercase letter
                                  'heLlo': 0
                                  'XX': 0

DS: array of string, we manipulate each string to find:
  - first : the that opens for inbetween uppercase letter,
    - count if the next letter(s) is/are lowercase, UNTIL we hit the next uppercase letter
    - SINCE we are interested in the first two uppercase letters we only stop at this point of intersection if
    found,
    - IF we dont find this case of two uppercase letters we return 0

ALGO:
- CREATE an substring; whose property is of lowercase letter between two uppercase letters,
- CREATE a variable for lowercase and uppercase alphabets
- EXPLICITLY return an empty array for an empty array

- ITERATE through the array for each string ## map method (transforming the array)

  - FOR each string, ITERATE through each string character
  -- # FOR an empty string explicity return 0 (** confirm if this is possible )
    - FOR each char iteration, find if its uppercase,
      - IF uppercase, add to the `substring`,
        - ** CHECK subsequent letters,
          - IF letter is lowercase, add to the `substring`

          - ** DO we encounter an uppercase letter(final)
          - IF letter is uppercase,
            - ADD letter to `substring`, and add `substring` to substring
              - *** COUNT all lowercase letters in the substring
                  - RETURN the count off all lowercase letters in the
          -** WHEN no uppercase lettercase is never encountered
            -- IF letter last letter is not uppercase,
              - RETURN 0

#
- RETURN the transformed array


=end
LOWER = ("a".."z").to_a
UPPER = ("A".."Z").to_a

def decode(arr)
  return [] if arr.empty?

  substring = ""

  result = arr.map do |text|
    text.empty? ? 0 : text

    text.each_char do |char|
      # finding if char is uppercase
      if UPPER.include?(char)
        substring << char
        # finding if next char after uppercase is lowercase
          if LOWER.include?(char)
            substring << char
            p substring
          end
      end
    end
  end
  result
end

# decode(['ZoL', 'heLlo', 'XX']) #== [1, 0, 0]
decode(['foUrsCoreAnd', 'seven', '']) #== [2, 0, 0]
# p decode(['lucYintheskyWith', 'dIaMonDs']) == [8, 1]
# p decode([]) == []




=begin

# Problem:

# input - array of strings
# output - array of integers
# - use map for transformation ?

# for each string, return the number of lowercase chars between the first two uppercase chars
# - if not 2 uppercase chars, return 0 for that string

# Test cases:
# p decode(['ZoL', 'heLlo', 'XX']) == [1, 0, 0]
# p decode(['foUrsCoreAnd', 'seven', '']) == [2, 0, 0]
# p decode(['lucYintheskyWith', 'dIaMonDs']) == [8, 1]
# p decode([]) == []

# - Data Structure

# - array to array using map for transformation

# Algorithm:

# - If the string does not include at least two uppercase characters, return 0
# - Else, iterate over the input array
# - For each string, iterate over each character
# - Check if the current character is uppercase
# - If it is, push the index of that character into a new array
# - From the new array, subtract the element at the first index from the element at the second index
# - Return the result

# Code:

# Note, this solution does not work because the math is wrong (subtracting one index from another)

def decode(array)
  array.map do |string|
    array = []
    if string.chars.count {|char| char == char.upcase} < 2
      0
    else
      string.chars.each_with_index do |char, index|
        array << index if char == char.upcase
      end
    array[1] - array[0]
    end
  end
end

p decode(['ZoL', 'heLlo', 'XX']) # == [1, 0, 0]

=end

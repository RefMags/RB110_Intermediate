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

def sub(text)
  substring = ""

  text.each_char.with_index do |letter, idx1|
    if UPPER.include?(letter)
      (idx1 + 1...text.size).each do |idx2|
        LOWER.include?(text[idx2]) ? (substring << text[idx2]) : break
      end
    break
    end
  end

  substring.size
end

# For all text with one uppercase letter
def uppercase_count(text)
  count = 0

  text.each_char do |char|
    count += 1 if UPPER.include?(char)
  end

  true if count == 1
end

def decode(arr)
  return [] if arr.empty?

  arr.map do |text|
    if text.empty? || text.chars.all? {|char| LOWER.include?(char)} || uppercase_count(text)
      0
    else
      sub(text)
    end
  end
end

p decode(['ZoL', 'heLlo', 'XX']) == [1, 0, 0]
p decode(['foUrsCoreAnd', 'seven', '']) == [2, 0, 0]
p decode(['lucYintheskyWith', 'dIaMonDs']) == [8, 1]
p decode([]) == []




=begin
We're receiving a set of messages in code. The messages are sets of text strings, like:"alakwnwenvocxzZjsf"
 Write a method to decode these strings into numbers.
The decoded number should be the number of lowercase characters between the first two uppercase characters. If there aren't two uppercase characters, the number should be 0.

INPUT
  Array (of Strings)
OUTPUT
  Array (of Integers, representing the decoded strings from input)

RULES & TERMS
  • Strings decoded toa number
    - The count of lowercase letters between the first 2 uppercase chars
    - IF there are less than 2 uppercase chars THEN RETURN 0 for the decode
  • IF input is empty THEN RETURN empty Array
  • IF a String is empty DECODE it to 0

DS
  Integer (index for the first uppercase char)
  Integer (index for the second uppercase char)
  Range (from first uppercase char + 1 to the second uppcase char idx (non-inclusive))

ALGO
** HELPER: get_uppercase_range(string)

  0. TRANSFORM each word from input string to decoded Integer
    a) GET the index positions of the first and last uppercase chars
      -- ITERATE through the string and it's idxs
        -- IF char is an uppercase add its idx to an Array

    b) IF there are less than 2 indexes found for uppercase chars THEN RETURN 0 for the decode
    c) COUNT the lowercase chars inbetween the two uppcase indexes
      -- GET substring from current string from 1st uppercase idx to 2nd upeprcase idx
      -- RETURN size of the substring
=end

UPPERCASES = ('A'..'Z').to_a

def decode(strings)
  strings.map! do |str|
    lowercase_range = uppercase_indexes(str)
    if lowercase_range.size < 2
      0
    else
      str[(lowercase_range[0] + 1)...lowercase_range[1]].size
    end
  end
end

def uppercase_indexes(str)
  uppercase_indexes = []

  str.chars.each_with_index do |char, idx|
    uppercase_indexes << idx if UPPERCASES.include? char
  end

  uppercase_indexes[0, 2]
end

p decode(['ZoL', 'heLlo', 'XX']) == [1, 0, 0]
p decode(['foUrsCoreAnd', 'seven', '']) == [2, 0, 0]
p decode(['lucYintheskyWith', 'dIaMonDs']) == [8, 1]
p decode([]) == []

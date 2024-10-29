# Take every possible pair from a string and return an array of arrays where every subarray is a pair of words
# The array should have every combination from the 1st word to the last word
# The array should not include the last word as the first element in any subarray


# p pairs("I love pie") == [['I', 'love'], ['I', 'pie'], ['love', 'pie']]
    # p pairs('1 2 3 4') == [['1', '2'], ['1', '3'], ['1', '4'], ['2', '3'], ['2', '4'], ['3', '4']]
    # p pairs("An apple a day keeps the doctor away")
    # p pairs("Every engineer enjoys innovative algorithms")

=begin

P:
Explicit
- Given a string
- Convert a string to an array,
  - for each element create a possible combination with other elements from first to last
  - the last word should not have any subarray.
- Return an array with a two level stage ie subarray
Implicit
- output should be a boolean
Input: string
Output: nested array

data structures: input = string >> array
                output = array

output: array of arrays with all pairs
data-flow: string => break it up based on spaces =>
iterate over range from idx 0 to second-to-last idx (length of array - 2)
 => iterate over range that begins with first_idx + 1 and ends with array
 length - 1 (second idx) => for each iteration, send first_idx element and
 second_idx element to new array object

Algorithm:
1. Initialize the variables
  - Create an array of the string
  - initialize an empty array
2. Iterate through each element of the array
3. Process each element of array
4. Pair each element with all other element
  - Put the pair of each element into a subarray
  - append the subarray to the main array
6. Stop the pairing before the last element
7. End the loop
8.


=end

def pairs(str)
  str_arr = str.split
  result_nested = []
  counter = 0


  while counter < str_arr.length - 1
    result_nested << [str_arr[counter], str_arr[counter + 1] ]
    counter += 1
  end

  result_nested
end

p pairs("I love pie") #== [['I', 'love'], ['I', 'pie'], ['love', 'pie']]



=begin

rescue => exception

=end


def pairs(str)
   str_arr = str.split
   nested_arr = []

   str_arr.each_with_index do |current_element, index|

   str_arr[(index + 1)..-1].each do |next_element|
       nested_arr << [current_element, next_element]
    end
  end

  nested_arr
end


p pairs("I love pie")

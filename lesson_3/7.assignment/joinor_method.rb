=begin
##### Problem and Example:
- We are tasked with improving the `join` feature of `board_cells`.
- Create a method that takes in the array of all positions on the board, i.e., keys of the board cell, and joins the element to return a string with the last element being joined by `or`.
- Input is an array(keys: cells of the board)
- Output is the string that joins all the cells to read as. `Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9`.
- Rules: if the length of the array is `0` we return an empty string.
		- if the length of the array is 1 we return the string value
		- if the length of the array is 2, we return `1 or 2`.
		- if the length of the array is more than 2, eg 3 `1, 2, or 3`.
##### Data Structure:
- We are given an array as our input value. We determine the length of the array, if the array is of length greater than 2, then we  insert `or` character before the last element. Or, inversely, join all the prefix elements less than 1 of the length,  then add  `or` before our last element. We return a string to the console.

##### Algorithm:
- IF the length of the array is of size greater than 2
	- JOIN all the prefix elements less the size of the array.
	- ADD the last element of the array with the prefix `', or #{array.last}`.
- ELSE if the length is 2,
	- JOIN the first and second element with `or`
- Else if the length is 1,
	- RETURN the element
- Else for a length of 0
	- return an empty string
- RETURN the joined string
=end

def joinor(arr, joiner1 = ", ", joiner2 = ", or", joiner3 = " or ")
  if arr.size > 2
    prefix_elements = arr.take(arr.size - 1).join(joiner1)
    prefix_elements << ("#{joiner2} #{arr.last.to_s}")
  elsif arr.size == 2
    arr.join(joiner3)
  elsif arr.size == 1
    arr[0].to_s
  else
    arr.join
  end
end

# Refactor this code using guard clauses, array decomposition, ternary operations
#

joinor([])                   # => ""
joinor([1])                   # => "1"
joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

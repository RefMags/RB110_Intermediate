=begin
Given a grid of values represented by an array of arrays, e.g.:
[1, 2, 3],
[4, 5, 6],
[7, 8, 9]

Return the largest sum of a column of values in the grid.
In this example, the largest sum is 18.

TEST CASES
a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]

b = [[1, 2, 3, 4],
    [5, 6, 7, 8]]

c = [[1, 0, 0],
     [5, 8, 10],
     [3, 5, 1]]



puts largest_column(a) == 18
puts largest_column(b) == 12
puts largest_column(c) == 13


P& E : We want to return the largest sum of the columns.
Are the subarrays of the same length ie what if one subarray is longer than the other?
NB: a nested array is a table where rows contain array of values. the column are formed
by taking the same index from each row
[[1, 2, 3], # Row 1
    [4, 5, 6], # Row 2
    [7, 8, 9]] # Row 3


Input: array
Output: an integer

DS:
- Given nested array,we want to initialize an array to store the column sum array.
-
Iterate through the rows, and add the values the value in each row(array), into the
column sum array. Then we find the column sum array with the maximum total.

ALGO:
- INITIALIZE an array to store column sums
- ITERATE through each rows and add values to columns sums
- FIND the column with largest sum
- RETURN the result
=end
def largest_column(arr)
  column_sums = Array.new(arr[0].size, 0)

  # Iterate through each row and add values to columns sums
  arr.each do |row|
    row.each_with_index do |value, col_index|
      column_sums[col_index] += value
    end
  end

  max_sum = column_sums.max
  max_sum
end



a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]
puts largest_column(a) == 18

b = [[1, 2, 3, 4],
    [5, 6, 7, 8]]
puts largest_column(b) == 12

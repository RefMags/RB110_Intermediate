=begin

Expli - given an array of arrays
      - return the largest sum of a column of values in the grid

Input: - array of arrays
Output: - integer

Assumption: the arrays of arrays are of similar length?

Mental model: each row has a column, add the digits that are held in the same index
of each row separately, that make up the sum of a column:


example: [[1, 2, 3, 4],
    [5, 6, 7, 8]]

data structure : given an array of arrays>> we work through integer elements of subarrays
>> return an integer

Algorithm
- initialize an total result
- iterate through array of array ie get sub-array
- iterate through each subarray
  - process each element(integer) by adding to the total of each column
  -

=end

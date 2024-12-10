=begin
  P-
  Explicit:
    - A function that takes an array of numbers
    - Return an ARRAY with PAIRS of NUMBERS
      - The pair's SUM are PERFECT SQUARE
    - Output array should be SORTED in ASC order of values
    - Do not use the inbulit Math.sqrt()
  Implicit:
    -  What is a perfect square?
      - a number whose product can be expressed by multiplying two same numbers
       eg 4 is perfect square root since it can ha 2 * 2
    -  How do we sort in asc? the sum of the squares, the numbers
      according to the  array?

  Mental Model: create unique pairs of integers, sum up each pair, if
  the sum of pair is perfect square, populate the pair to a result array

  Input: an array: [1, 2, 3, 4, 5]
  Processing : pairing each number: 1 + 2 = 3 => Not perfect sqr
                                    1 + 3 = 4 => Perfect sqr
                                    1 + 4 = 5 =>
                                    1 + 5 = 6 =>
                                    ....
                                    4 + 5 = 9 => Perfect
  Output: an array (nested) : [[1, 3], [4, 5]]

  Ex-

  DS-

  Algo-
  # - Create an empty result array
  - TRANSFORM the array numbers into unique pairs
  - SUM up the unique pairs
  - SELECT the pair whose SUM is a perfect square
      P: Determining the perfect square
        - numbers greater than zero arent perfect squares
        - A perfect square is one whose product == x * x
        - HELPER method

      - Check if the corresponding pair's sum is perfect square
      - RETURN the pairs whose sum is a perfect square
        - SORT the returns of the pairs whose sum==perfect square in ASC order
  - RETURN the sorted pairs whose sum is a perfect square


  CODE:

=end
def pairs(numbers)
  # numbers.combination(2).to_a
  new_pair = []

  numbers.each_with_index do |number , index|
    (index + 1...numbers.length).each do |idx|
      new_pair << [number, numbers[idx]]
    end
  end

  new_pair
end

# def sumOfPairs(pairs_arr)
#   pairs_arr.map { |pair| pair.sum }
# end

# def is_perfect_square?(num)
#   return false if num < 0

# int = 0
#   while int * int <= num
#     if int * int == num
#       return true
#     end
#     int += 1
#   end
#   false
# end

# def sumOfPairsSquares(numbers)
#   all_pairs = pairs(numbers)
#   sums_of_pairs = sumOfPairs(all_pairs)

#   perfect_square_pairs = all_pairs.select.with_index do |pair, index|
#     is_perfect_square?(sums_of_pairs[index])
#   end

#   perfect_square_pairs.sort! {|a, b| a <=> b}

#   perfect_square_pairs
# end

pairs_arr = pairs([1, 2, 3, 4, 5]) #== [[1, 2], [1, 3], [1, 4], [1, 5], [2, 3],
                               #[2, 4], [2, 5], [3, 4], [3, 5], [4, 5]]
p pairs_arr

# puts sumOfPairs([[1, 2], [1, 3], [1, 4], [1, 5], [2, 3],
#                 [2, 4], [2, 5], [3, 4], [3, 5], [4, 5]]) == [3, 4, 5, 6, 5, 6, 7, 7, 8, 9]

# puts is_perfect_square?(4) == true
# puts sumOfPairsSquares([1, 2, 3, 4, 5]) == [[1, 3], [4, 5]]



# puts sumOfPairsSquares([0, 1]) == [[0, 1]]
# puts sumOfPairsSquares([1, 9, 16, 402, 528]) == [[1, 528], [9, 16]]
# puts sumOfPairsSquares([2, 4, 6, 8]) == []
# puts sumOfPairsSquares([]) == []

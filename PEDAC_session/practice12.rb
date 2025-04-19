=begin
The objective is to return all pairs of numbers from a given array of numbers that have a difference of 2.
The result array should be sorted in ascending order of values.
Assume there are no duplicate numbers in the array.
The order of the numbers in the input array should not matter.


P: Determine all pairs of numbers that have a difference of 2. Method takes in an
array, returns a nested array. Then we should sort in ascending order of values; elements? or the pairs?
- No duplicates in the array
- What if we have an empty array input ?
INPUT: array
OUTPUT: array
RETURN: array

end
Ex:
- [1, 2, 3, 4]: for 1; [1, 2] ; diff : 1
                        [1, 3] ; diff : 2
                        [1, 4] ; diff : 3
                for 2; [2, 3] ; diff : 1
                        [2, 4] ; diff : 2
                for 3; [3, 4] ; diff : 1
                for 4; end
        pairs with diff 2: [1, 3], [2, 4]
DS Arrays

ALGO
- ITERATE through the numbers array to make all possible pairs at
  - FOR each number pair it with the next
    - USE index
- SELECT all pairs whose difference is 2.
- SORT the pairs in ascending order
- RETURN the PAIRS

=end

def differenceOfTwo(numbers)
  pairs = []


  numbers.each_with_index do |num, idx|
    (idx + 1..numbers.size - 1).each do |count|
      if (numbers[count] - num == 2)
        # puts "#{[num, numbers[count]]}"
        pairs << [num, numbers[count]]
      elsif ( num - numbers[count] == 2 )
        # puts "#{[num, numbers[count]]}"
        pairs << [num, numbers[count]]
      end
    end
  end
  pairs.map {|sub| sub.sort }.sort
end


puts differenceOfTwo([1, 2, 3, 4]) == [[1, 3], [2, 4]]
puts differenceOfTwo([4, 1, 2, 3]) == [[1, 3], [2, 4]]
puts differenceOfTwo([1, 23, 3, 4, 7]) == [[1, 3]]
puts differenceOfTwo([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
puts differenceOfTwo([2, 4]) == [[2, 4]]
puts differenceOfTwo([1, 4, 7, 10, 13])== []

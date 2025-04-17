# def smaller_numbers_than_current(numbers)
#   smaller_nums = Hash.new {|h, k| h[k] = []}

#   (0.upto(numbers.size - 1)).each do |idx|
#     p numbers[idx]
#   end

#   # numbers.each_with_index do |num, idx1|
#   #   (1.upto(numbers.size)).each do |idx2|

#   #   # greater = num > numbers[idx2]
#   #   p "#{num} is indeed #{greater} that its greater than #{numbers[idx2]}"
#   #   end
#   # end
# end


def smaller_numbers_than_current(numbers)
  numbers.map do |num1|
    counts = numbers.uniq.count {|num2| num1 > num2 }
  end
end


p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
my_array = [8, 1, 2, 2, 3]
result = [3, 0, 1, 1, 2]
# result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
 p smaller_numbers_than_current(my_array) == result

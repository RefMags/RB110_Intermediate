def minimum_sum(numbers)
  return nil if numbers.empty?
  sum = []

  (0..(numbers.size - 5)).each do |idx|
    sum << numbers[idx, 5].sum
  end
  sum.min
end
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

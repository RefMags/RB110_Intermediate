# p [2, 4].reduce(&:*)
# p '23456'.to_i.digits.reverse

def greatest_product(str)
  nums = str.to_i.digits.reverse
  subs = []

  (0..nums.size - 4).each do |num|
    subs << nums[num, 4]
  end

   subs.map { |sub| sub.reduce(&:*) }.max
end

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6


=begin
  Approach 2

def greatest_product(source)
  result = 0
  numbers = numbers.to_i.digits.reverse

  (0..(source.size - 4)).each do |idx|
    numbers = numbers[idx, 4]

    product = numbers.inject(:*)
    result = product if product > result
  end

  result
end
p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6

=end

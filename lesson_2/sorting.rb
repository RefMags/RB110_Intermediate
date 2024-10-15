# ['c', 'a', 'e', 'b', 'd'].sort # => ['a', 'b', 'c', 'd', 'e']

# [2, 5, 3, 4, 1].sort do |a, b|
#   b <=> a
# end
# # => [5, 4, 3, 2, 1]

# p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

original_arr = ['cot', 'bed', 'mat']

sorted_arr = original_arr.sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]
p sorted_arr
p original_arr

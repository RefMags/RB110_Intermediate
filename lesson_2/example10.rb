# [[[1, 2], [3, 4]], [5, 6]].map do |arr|
#   arr.map do |el|
#     if el.to_s.to_i == el   # it's an integer
#       el + 1
#     else                    # it's an array
#       el.map do |n|
#         n + 1
#       end
#     end
#   end
# end

# => [[[2, 3], [4, 5]], [6, 7]]

=begin
# this is the first element of the main array.
[[1, 2], [3, 4]].map do |el|
  if el.to_s.to_i == el
    el + 1
  else
    el.map do |n|
      n + 1
    end
  end
end

=end
adding_second_element = [5, 6].map do |el|
  if el.to_s.to_i == el
    p (el + 1)
  else
    el.map do |n|
     n + 1
    end
  end
end
p adding_second_element  # => [6, 7]


adding_nested_element = [[1, 2], [3, 4]].map do |el| [[]]
  if el.to_s.to_i == el
    (el + 1)
  else
    el.map do |n| # => [2, 3], [4, 5]
     p (n + 1)
    end
  end
end

p adding_nested_element # => [[2, 3], [4, 5]]

[1, 2].map do |n| # => [2, 3]
     p (n + 1)
    end

nested_arr = [[1, 2, 3, 4], [2, 3, 4], [3, 4], [4]]

sub_arr_with_3= nested_arr.select do |sub_arr|
  sub_arr.include?(3)
end

p sub_arr_with_3

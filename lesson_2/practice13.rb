arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.sort_by do |sub_arr|
  odd_num = sub_arr.select do |num|
    num.odd?
  end
  odd_num
end

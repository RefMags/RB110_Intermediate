def closest_numbers(arr)
  subpairs = []

  arr.each_with_index do |num, idx1|
    (idx1 + 1..arr.size - 1).each do |idx2|
      subpairs << [num, arr[idx2]]
    end
  end

  min_difference = subpairs.map do |pair|
    (pair[0] - pair[1]).abs
  end.min

  subpairs.find { |pair| (pair[0] - pair[1]).abs == min_difference }
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]

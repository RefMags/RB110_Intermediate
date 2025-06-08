def equal_sum_index(source)
  size = source.length

  source_mapped = source.map.with_index do |_, idx|
    left_sum = source[0..idx].sum
    right_sum = source[idx..size].sum

    if left_sum == right_sum
      idx
    else
      -1
    end
  end

  return -1 if source_mapped.all? {|idx| idx == -1 }
  source_mapped.find {|idx| idx > -1 }

end

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
p equal_sum_index([0, 2, 4, 4, 2, 3, 2]) == -1

# The following test case could return 0 or 3. Since we're
# supposed to return the smallest correct index, the correct
# return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0

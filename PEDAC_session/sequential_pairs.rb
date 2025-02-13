sample = [1, 2, 3, 4, 5]

# Generate all sequential pairs of the array

def sequentialPairs(arr)
  result = []

  (0...arr.length - 1).each do |ele|
    result << [arr[ele], arr[ele + 1]]
  end
  result
end

p sequentialPairs(sample) == [[1, 2], [2, 3], [3, 4], [4, 5]]

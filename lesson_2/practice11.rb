arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

multiples_of_three = arr.map do |subarr|
  subarr.select do |num|
    num % 3 == 0
  end
end


p multiples_of_three

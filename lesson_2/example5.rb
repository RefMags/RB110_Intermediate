mapped = [[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

p mapped

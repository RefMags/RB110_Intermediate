main_arr = [['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  inner_arr = sub_arr.map do |letter|
    letter.upcase
  end
  puts inner_arr
end

# [['A', 'Bb'], ['C', 'D'], ['E', 'F']]

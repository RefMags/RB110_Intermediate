def is_odd?(int)
  # int.abs % 2 != 0
  # int % 2 == 1
  int.remainder(2).abs == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(0)

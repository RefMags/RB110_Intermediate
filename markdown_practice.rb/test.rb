array = [1, 2, 3, 4, 5].each do |num|
  puts num
  break if num > 3
end

p array

[1, 2, 3, 4, 5].map do |num|
  break "Stopped" if num > 3
  num * 2
end

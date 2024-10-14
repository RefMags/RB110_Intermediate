[1, 2, 3].select do |num|
  num > 5
  'hi'
end


[1, 2, 3].reject do |num|
  puts num
end


[1, 2, 3].any? do |num|
  puts num
  p num.odd?
end

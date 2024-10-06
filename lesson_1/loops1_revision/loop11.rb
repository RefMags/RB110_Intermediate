count = 1

loop do
  p count.odd? ? "#{count} is odd" : "#{count} is even"

  count += 1
  break if count > 5
end

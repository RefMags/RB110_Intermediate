[1, 2, 3].any? do |num|
  puts num  # output 1 , 2, 3 on each new line return value is nil
  num.odd? # nil.odd?
end

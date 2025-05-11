def odd_fellow(arr)
  # arr.find {|num| arr.count(num).odd? }
  #
  arr.tally.find {|k, v| v.odd? }[0]
end

p odd_fellow([4]) == 4
p odd_fellow([7, 99, 7, 51, 99]) == 51
p odd_fellow([7, 99, 7, 51, 99, 7, 51]) == 7
p odd_fellow([25, 10, -6, 10, 25, 10, -6, 10, -6]) == -6
p odd_fellow([0, 0, 0]) == 0

hash = { a: 'ant', b: 'bear', c: 'cat' }

result = hash.each_with_object([]) do |(key, value), array|
  array << [key, value.length]
end

p result



#Q2.
# result = ['a', 'b', 'c'].select do |letter|
#   letter != 'b'
# end
# p result

# # Snippet 2
# result = ['a', 'b', 'c'].reject do |letter|
#   letter == 'b'
# end
# p result

# Q1.
# arr = [1, 2, 3, 4, 5]
# new_arr = arr.map do |num|
#   if num > 3
#     num * 2
#   else
#     num
#   end
# end

# p arr
# p new_arr

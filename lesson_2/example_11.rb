# The method remove_evens! should delete all even numbers from the array passed in as the argument.

# def remove_evens!(arr)
#   arr.each_with_index do |num, idx|
#     if num % 2 == 0
#       arr.delete(num)
#     end
#   end
#   arr
# end

# p remove_evens!([1,1,2,3,4,6,8,9])
# expected return value [1, 1, 3, 9]
# actual return value [1, 1, 3, 6, 9]

def remove_evens!(arr)
  cloned_arr = arr.dup
  cloned_arr.each do |num|
    # p "#{arr} and #{cloned_arr}"
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
  cloned_arr
end

p remove_evens!([1,1,2,3,4,6,8,9])

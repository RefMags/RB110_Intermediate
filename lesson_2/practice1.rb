arr = ['10', '11', '9', '7', '8']

arr_num = []
counter = 0

# Manual approach

# loop do
#   break if counter == arr.size
#   current_num = arr[counter].to_i

#   arr_num << current_num
#   arr_num = arr_num.sort {|num1, num2| num2 <=> num1 }
#   counter +=1
# end

# arr_num

# arr_str = arr_num.map {|int| int.to_s}

# p arr_str

# idiomatic approach
p arr_sorted_descending = arr.sort {|str1, str2| str2.to_i <=> str1.to_i }

words = "the flintstones rock"
# p words_arr = words.split

words_arr_cap = words_arr.each {|word| word.capitalize!}
p words_arr_cap.join(' ')

def bouncyCount(numbers)
  count = 0

  numbers.each do |current_int|
    current_int_arr = current_int.to_s.chars
    asc_sort_of_current_int_arr = current_int_arr.sort
    dsc_sort_of_current_int_arr = asc_sort_of_current_int_arr.reverse

    # ____
    # How can we account for 442 type of values?
    # if current_int_arr != asc_sort_of_current_int_arr && dsc_sort_of_current_int_arr && (current_int_arr.size > 2)
    #   # puts "#{current_int_arr} is bouncy"
    #   count += 1
    # end
    #____
    if current_int_arr == asc_sort_of_current_int_arr
      count += 0
    elsif current_int_arr == dsc_sort_of_current_int_arr
      count += 0
    else
      count += 1
    end
  end
  count
end

p bouncyCount([]) == 0
p bouncyCount([11, 0, 345, 21]) == 0
p bouncyCount([121, 4114]) == 2
p bouncyCount([176, 442, 80701644]) == 2

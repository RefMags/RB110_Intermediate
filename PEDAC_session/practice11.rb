def evenPercent(numbers)
  return "1.00" if numbers.empty?
  sum = numbers.map.with_index do |num, idx|
    numbers[0..idx].sum
  end

  even_counts = sum.count {|num| num.even? }
  even_percentage = (even_counts.to_f / numbers.size).round(2)

  formatted_percent  = format("%.2f", even_percentage)
  # formatted_percentage = sprintf("%.2f", even_percentage)
  formatted_percent

end

p evenPercent([1, 2, 4]) == '0.00'
p evenPercent([1, 3]) == '0.50'
p evenPercent([1, 5, 3]) == '0.33'
p evenPercent([2, 4, 6]) == '1.00'
p evenPercent([12]) == '1.00'
p evenPercent([13]) == '0.00'
p evenPercent([]) == '1.00'

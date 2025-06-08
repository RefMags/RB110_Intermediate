def nearest_prime_sum(source)
  original_sum = source.sum
  current_number = original_sum + 1
  prime_number = 0

  # next number
  loop do
    if is_prime?(current_number)
      prime_number = current_number
    end

    break if is_prime?(current_number) == true
    current_number += 1
  end


  # Number to be added to the array
  number = prime_number - original_sum
end

def is_prime?(source)
  prime_numbers = []

  (1.upto(source)).each do |num|
    division = (source % num)
    if division == 0
      prime_numbers << num
    end
  end

  # Return true or false if number is prime or not
  prime_numbers.size == 2 && prime_numbers == [1, source]
end

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4

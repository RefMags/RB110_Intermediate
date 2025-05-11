def is_prime?(num)
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end

def nearest_prime_sum(arr)
  total = arr.sum

  # next closest_prime
  closest_prime = total + 1
  closest_prime += 1 until is_prime?(closest_prime)

  min_integer = closest_prime - total

end

# p is_prime?()
p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4

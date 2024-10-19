ages = { "Herman" => 32,
          "Lily" => 30,
          "Grandpa" => 5843,
          "Eddie" => 10,
          "Marilyn" => 22,
          "Spot" => 237 }

# munster_family_ages = ages.values
# counter = 0
total_sum = 0


# loop do
#   break if counter == munster_family_ages.size
#   current_age = munster_family_ages[counter]
#   total_sum = total_sum + current_age
#   counter += 1
# end

# p total_sum


# using iterative method: `each`

ages.each do |_, value|
  total_sum += value
end

puts total_sum

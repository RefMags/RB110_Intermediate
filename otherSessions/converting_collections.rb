# flinstones = ["Fred", "Barney", "Wilma", "Betty", "Pebble", "BamBam"]
# new_hash = {}

# flinstones.each_with_index do |ele, idx|
#   new_hash[ele] = idx
# end

# p new_hash

## Practice Problem 2___
# ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

# # total_age = 0
# # ages.each { |names, age| total_age += age }
# # ages.values.inject(:+)
# # p total_age

## Practice Problem 3___
ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

less_than_100 = ages.select! {|_, value| value < 100}

p less_than_100
p ages

## Practice Problem 4____

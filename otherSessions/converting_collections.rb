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

## Practice Problem 4____
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_age = ages.values.min

## Practice Problem 5____
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.find do |flintstone|
 if flintstone.start_with?("Be")
  flintstones.index(flintstone)
 end
end

## Practice Problem 6____

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |flintstone|
  flintstone.slice(0,3)
end

flintstones

## Practice Problem 7____
statement = "The Flintstones Rock"
p statement_arr = statement.split

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

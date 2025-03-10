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
alphabets = ("A".."Z").to_a + ("a".."z").to_a
result = {}

alphabets.each do |letter|
  letter_count = statement.count(letter)
  if letter_count > 0
    result[letter] = letter_count
  end
end

result
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }


## Practice Problem 8____

# numbers = [1, 2, 3, 4]
# arr_ = numbers.each do |number|
#   number
#   numbers.shift(1)
# end

# p numbers


# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   p numbers.pop(1)
# end

# p numbers
## Practice Problem 10____

# "kid" => (0..17), "adult" => (18..64), "senior" => (>65)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

each = munsters.each do |name, details|
  case details["age"]
  when 0..17
    details["age_group"] = "kid"
  when 18..64
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
p each
# p munsters

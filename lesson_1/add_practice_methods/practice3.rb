ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# transform the object to return only ages less than 100
under_100 = {}

ages.each do |key, value|
  if value < 100 ?
    under_100[key] = value
  end
end

puts under_100

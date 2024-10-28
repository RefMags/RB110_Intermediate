
# select the males based on the gender key

def munsters_males(munsters_family, gender)
  munsters_members = munsters_family.keys
  counter = 0
  male_total_age = 0

  loop do
    break if counter == munsters_members.size
    current_key = munsters_members[counter]
    current_value_gender = munsters_family[current_key]["gender"]
    current_age = munsters_family[current_key]["age"]

    if current_value_gender == "male"
      male_total_age += current_age
    end
    counter += 1
  end
  male_total_age
end


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

puts munsters_males(munsters, "gender")

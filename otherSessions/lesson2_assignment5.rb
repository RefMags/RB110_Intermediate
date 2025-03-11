# No2. ordering hash's year of publication values array elements
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

ordered_books = books.sort_by { |book| book[:published] }
ordered_books1 = books.sort {|a, b| a[:published] <=> b[:published] }

# p ordered_books
# p ordered_books1

# No4. Finding and replacing all `3`'s with `4`
def replacement(arr, target, replacement)
  arr.map do |element|
    if element.is_a?(Array)
      replacement(element, target, replacement)
    elsif element == 3
      replacement
    else
      element
    end
  end
end

arr1 = [1, [2, 3], 4]
p replacement(arr1, 3, 4)


# b

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# hsh1 = {first: [1, 2, [3]]}
# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}


# No5. Sum up all the male members's ages
=begin
  - we want to access the `hash` values' `"ages"` for key's values.
  - we sum up all the values
=end
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0

munsters.each do |_, hash_value|
  total_male_age += hash_value["age"] if hash_value["gender"] == "male"
end

# p total_male_age

# No. 6 print out name, age, and gender

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
end

# No 7.
a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2 # 4 # => we concatenate the `0` index of `arr`, that is `2` with 2.
  # the return is assigned to the `0` position.
arr[1][0] -= a # 3

p a
p b

selected_hash_element = [{ a: 'ant', b: 'elephant' }].select do |hash|
  matching_first_value = hash.all? do |key, value|
    value[0] == key.to_s
  end
  p matching_first_value
end

p selected_hash_element
# => [{ :c => "cat" }]

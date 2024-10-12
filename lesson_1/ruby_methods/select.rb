# animals = ['Zebra', 'Elephant', 'Cheetah']

# animals_length = animals.select do |animal|
#    animal.length == 4
# end

# p animals
# p animals_length


animals = { 'antelope': 10, 'buffalo': 8, 'cheetah': 4}

number_of_animals = animals.select do |key, value|
  p value >= 5
end

p number_of_animals

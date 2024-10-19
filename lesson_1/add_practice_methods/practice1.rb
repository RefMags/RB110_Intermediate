flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
counter = 0

# flintstones.each_with_index do |flintstone, index|
#    flintstones_hash[flintstone] = index
# end

# puts flintstones_hash

loop do
  break if counter == flintstones.size
  current_flintstone = flintstones[counter]
  flintstones_hash[current_flintstone] = counter
  counter += 1
end

puts flintstones_hash

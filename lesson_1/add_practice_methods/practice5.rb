flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# First solution
be_flintstone = flintstones.detect {|element| element.start_with?("Be")}
puts flintstones.index {|index| index == be_flintstone }

# Second solution
puts flintstones.index {|flintstone_name| flintstone_name.slice(0, 2) == "Be"}

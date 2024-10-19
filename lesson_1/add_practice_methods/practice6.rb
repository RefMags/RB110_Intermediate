flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|flintstone| flintstone.slice(0, 3)}

p flintstones

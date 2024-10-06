process_the_loop = [true, false].sample
# count = 0

# loop do
#   puts process_the_loop == true ? "The loop was processed!" : "The loop wasn't processed!"
#   break
# end

if process_the_loop then 1.times { puts "The loop was processed." } else puts "The loop wasn't processed!" end

# countries = %w(Japan Indonesia Vietnam Malaysia)
# # countries = %w(Japan Vietnam Indonesia Malaysia) # with this line, Vietnam is printed. why?

# countries.each do |country|
#   if country.include?('sia')
#     country
#   else
#     countries.delete(country)
#   end
# end

# p countries


countries_start_with_letter = {a: "Angola", b: "Bolivia", c: "Canada"}

countries.each do |key, value|
    puts "Countries that start with #{key} is #{value}"
end

p countries


asian_countries = %w(Japan Indonesia Vietnam Malaysia)
countries.each do |country|
  puts country
end

p countries

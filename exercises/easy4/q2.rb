def century(year)
  century = find_century(year)
  suffix = find_century_suffix(century)
  "#{century.to_s}#{suffix}"
end

def find_century(year)
  # (year / 100.0).ceil
  century = year % 100 != 0 ? (year / 100) + 1 : (year / 100)
end

def find_century_suffix(century)
  return "th" if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else
    "th"
  end
end



# p find_century(2000) #== '20'
# p find_century(2001) #== '21'
# p find_century(1965) #== '20'
# p find_century(256) #== '3'
# p find_century(5) #== '1'
# p find_century(10103)# == '102'
# p find_century(1052) #== '11'
# p find_century(1127) #== '12'
# p find_century(11201)# == '113'

# p find_century_suffix(20) == '20th'
# p find_century_suffix(21) == '21st'
# p find_century_suffix(20) == '20th'
# p find_century_suffix(3) == '3rd'
# p find_century_suffix(1) == '1st'
# p find_century_suffix(102) == '102nd'
# p find_century_suffix(11) == '11th'
# p find_century_suffix(12) == '12th'
# p find_century_suffix(113) == '113th'


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

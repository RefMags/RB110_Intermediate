def stringy(int)
  return_string = ''
  # counter = 0
  int.times do |count|
    current_string = count.even? ? "1" : "0"
    return_string << current_string
  end
  return_string
end

def stringy(int)
  return_string = ''
  # counter = 0
  int.times { |count| count.even? ? return_string << "1" : return_string << "0"}
  return_string
end




puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

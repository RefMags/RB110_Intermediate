# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end


# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false
# p xor?('abc', nil) == true
# p xor?(nil, 'abc') == true
# p xor?('abc', 'abc') == false
# p xor?(nil, nil) == false


def xor?(v1, v2)
  if v1
    v2 ? false : true
  else
    v2 ? true : false
  end
end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false

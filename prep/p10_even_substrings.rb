# def even_substrings(str)
#   total = 0

#   str.each_char.with_index do |_, idx|
#     (idx..str.size - 1 ).each do |idx2|
#       total += 1 if str[idx..idx2].to_i % 2 == 0
#     end
#   end

#   total
# end


def even_substrings(source)
  even_numbered_substrings = []

  source.each_char.with_index do |_, idx1|
    (idx1...source.size).each do |idx2|
      sub = source[idx1..idx2].to_i
      even_numbered_substrings << sub if sub.even?
    end
  end

  even_numbered_substrings.count
end
p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12

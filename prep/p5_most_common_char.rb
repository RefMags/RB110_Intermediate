def most_common_char(str)
  char_counts = Hash.new {|h, k| h[k] = 1}

  str.downcase.each_char do |char|
    if !char_counts.include?(char)
      char_counts[char]
    else
      char_counts[char] += 1
    end
  end

  max = char_counts.values.max

  char_counts.find {|k,v| k if v == max }.first
end



p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'

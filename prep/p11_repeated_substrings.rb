def repeated_substring(source)
  result = []
  substring = ''

  source.each_char.with_index do |_, idx1|
    (idx1...source.size).each do |idx2|
      target = source[idx1..idx2]
      repeat = largest_repeat_count(source, target)

      product = target * repeat

      if product == source
        result << [target, repeat]
      end
    end
  end

  # Get the shortest possible substring with largest possible repeat
  fitting_substrings = result.to_h
  fitting_substrings.first

end

def largest_repeat_count(source, target)
  s_size = source.size
  t_size = target.size

  k = s_size / t_size
end

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]

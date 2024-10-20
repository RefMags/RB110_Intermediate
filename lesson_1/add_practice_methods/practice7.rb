statement = "The Flintstones Rock"
statement_arr = statement.delete(" ").chars.sort
statement_hash = {}

statement_arr.each do |letter|
  letter_frequency = statement_arr.count(letter)
  statement_hash[letter] = letter_frequency
end

statement_hash

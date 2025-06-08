=begin

P: A method with integer input, that returns the sum of multiples of 7 and 11
less than input.

Ex: 25 input
Multiples of 7: 1 * 7 = 7
                2 * 7 = 14
                3 * 7 = 21

                1 * 11 = 11
                2 * 11 = 22

                sum = 7 + 14 + 21 + 11 + 22


DS : array

ALGO:
- CREATE an array for all numbers up to input
- CREATE empty array for multiples of 7 and 11
- CHECK all multiples of each number
- MERGE all the multiples array
-

=end
def seven_eleven(int)
  multiples = []

  # find all multiples of 7
  (1.upto(int - 1)).each do |num|
    if num % 7 == 0 || num % 11 == 0
      multiples << num
    end
  end

  multiples.uniq.sum
end


p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0


=begin
  Second aApproach
def multiples_of_seven(target)
  seven_multiples = []

  (1.upto(target)).each do |num|
    product = num * 7
    seven_multiples << product if product < target
  end

  seven_multiples
end

def multiples_of_eleven(target)
  eleven_multiples = []

  (1.upto(target)).each do |num|
    product = num * 11
    eleven_multiples << product if product < target
  end
  eleven_multiples
end

def seven_eleven(target)
  multiples = multiples_of_seven(target)+ multiples_of_eleven(target)

  sum = multiples.uniq.sum
end

p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0

=end

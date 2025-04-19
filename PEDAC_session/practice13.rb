=begin

Implement a function that calculates the sum of numbers inside of a string.

You can expect that the string will include only positive numbers.

p sum_of_numbers("L12aun3ch Sch3oo451") == 469
p sum_of_numbers("HE2LL3O W1OR5LD") == 11
p sum_of_numbers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635


P: We have to extract all numbers from the string and and calculate the sum.
- INPUT is a string ; tht means our digits will originally be in string
- RETURN an integer.
- Are consecutive numbers a single value or not? ie 12 is is 1 and 2 or 12? test 1

EX: "L12aun3ch Sch3oo451"  we have 12, 3 , 3, 451

DS: Maintain string input as our processing,  collect into an array numbers as array, integers

ALGO:
- CREATE an empty array variable, `numbers`, empty string to get the `number`
- CREATE an array of integers 1..9
- ITERATE through the string,
  - FOR each iteration, CHECK if char is a integer string,
  - IF it is, add to the num, NB
  - ELSE if char is not,
    - ADD `number` to the `numbers` if `number` is not empty
    - Reset number to empty string.
  - RETURN the array with string integers,
- CHECK the `number` is empty one last time, (because adding the number to numbers is
                                          only triggered if char is not integer)
                                          AND add to the `numbers`
- CONVERT all elements ie `numbers` to integers, AND sum them up
=end
def sum_of_numbers(str)
  numbers = []
  number = ""
  digits = ("0".."9").to_a


  str.each_char.with_index do |char, idx|
    if digits.include?(char)
      number << char
    else
      numbers << number if number != ""
      number = ""
    end
  end

  numbers << number if number != ""
  numbers.map(&:to_i).sum
end

p sum_of_numbers("L12aun3ch Sch3oo451") == 469
p sum_of_numbers("HE2LL3O W1OR5LD") == 11
p sum_of_numbers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635

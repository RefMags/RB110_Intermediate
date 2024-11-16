# Implement a function that calculates the sum of numbers inside of a string.

# You can expect that the string will include only positive numbers.

=begin
  Explicit req:
    - calculate the sum of numbers in a string
    - return value is

  Input: string
  Output: num

  Example:

  Data structure: string >> array >> string > integer

  Algorithm:
   - iterate each character of string
    - process each char to see if it is a string equavalent of a number
  - populate the string for numbers
    - if current character is a digit string,
      - convert to an integer
      - add the number to sum



=end



def sum_of_numbers(str)
  total = 0
  curret_num = ""

  str.each_char do |char|
    if char >= '0' && char <= '9'
      curret_num +=
  end
end


sum_of_numbers("L12aun3ch Sch3oo451") #= 469
# sum_of_numbers("HE2LL3O W1OR5LD") == 11
# sum_of_numbers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635

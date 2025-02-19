=begin

// You are asked to square every digit of a number.
// For example, if we run 9119 through the function, 811181 will come out,
because 9^2 is 81 and 1^2 is 1.

// p square_digits(0) ==    0
// p square_digits(64) ==   3616
// p square_digits(1111) == 1111
// p square_digits(2222) == 4444
// p square_digits(3333) == 9999
// p square_digits(3212) == 9414
// p square_digits(1234) == 14916
// p square_digits(77455754) == 4949162525492516
// p square_digits(99999999) == 8181818181818181

// print(square_digits(0) ==    0)
// print(square_digits(64) ==   3616)
// print(square_digits(1111) == 1111)
// print(square_digits(2222) == 4444)
// print(square_digits(3333) == 9999)
// print(square_digits(3212) == 9414)
// print(square_digits(1234) == 14916)
// print(square_digits(77455754) == 4949162525492516)
// print(square_digits(99999999) == 8181818181818181)

// console.log(square_digits(0) ==    0)
// console.log(square_digits(64) ==   3616)
// console.log(square_digits(1111) == 1111)
// console.log(square_digits(2222) == 4444)
// console.log(square_digits(3333) == 9999)
// console.log(square_digits(3212) == 9414)
// console.log(square_digits(1234) == 14916)
// console.log(square_digits(77455754) == 4949162525492516)
// console.log(square_digits(99999999) == 8181818181818181)
=end

=begin
algorithm
- Create an array of integers to

=end

def square_digits(input_num)
  digit_str = input_num.to_s.chars
  digit_arr = digit_str.chars
  digit_arr.map!(&:to_i)
  digit_arr.map! {|num| num * num }
  str_arr = digit_arr.join.to_i
end

def square_digits(input_num)
  digit_arr = input_num.to_s.chars
  squared_digit = digit_arr.map {|num| num * num}
end

p square_digits(9119)

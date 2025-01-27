=begin
Explicit req: - method takes in a year > 0
              - using the gregorian calendar
              - a leap year occurs in every 4 years
                - that is evenly divisible by 4
              - if divisible by 100, it may or may not be a leap year
                - unless it is evenly divisible by 400
implicit req:

input: integer
output: boolean value `true` or `false` if a year is a leap year or not respectively

mental model: the return of the division by 4, should be an even number, that is
shouldnt have a remainder, if the year is divisible by 100, then we have to also
check if its divisible by 400, if divisible by 400, then the result should
be an even number.

Example:
 Input: 2016 / 4 = 504
 Processing: 504 % 2 == 0
 Output : true

2100 / 4

Data structure: an integer >> boolean return >> boolean return value if the condition
is met


algo
- determine the leap year
 - dividing the year by 4
 - divide the year by 100 and by 400
 - check the remainder of the result of the divisions
 - return true if it is evenly divisible by 4 or 400 else false
=end

def leap_year?(year)
  result = year / 4.0 || ((year / 100) && (year / 400))
  # result = year / 4.0
  result % 2 == 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

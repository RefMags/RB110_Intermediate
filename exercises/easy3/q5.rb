def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 5)


def square(num1)
  multiply(num1, num1)
end

p square(5) == 25

# exponent
def general_power(base, exponent)
  multiply(base, 1) ** exponent
end

p general_power(5, 2)

a = 'foo'
b = 'food'
c = 'food'
d = 'foodie'

a <=> b # => -1
c <=> b # => 0
d <=> c # => 1

arr = [a, b, c, d]

p arr.sort

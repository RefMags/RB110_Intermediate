say_hello = true
iterate = 0

while say_hello
  puts 'Hello!'
  iterate += 1
  say_hello = false if iterate == 5
end

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

p letter_g = arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

p arr2_g = arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

p arr3_g = arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1_g = hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2_g = hsh2[:third].key(0)

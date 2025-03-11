# No2. ordering hash's year of publication values array elements
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

ordered_books = books.sort_by { |book| book[:published] }
ordered_books1 = books.sort {|a, b| a[:published] <=> b[:published] }

# p ordered_books
p ordered_books1

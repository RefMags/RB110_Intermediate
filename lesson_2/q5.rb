todo_lists = [
  {
    id: 1,
    list_name: 'Groceries',
    todos: [
      { id: 1, name: 'Bread', completed: false },
      { id: 2, name: 'Milk', completed: false },
      { id: 3, name: 'Apple Juice', completed: false }
    ]
  },
  {
    id: 2,
    list_name: 'Homework',
    todos: [
      { id: 1, name: 'Math', completed: false },
      { id: 2, name: 'English', completed: false }
    ]
  }
]

# todo_lists[1].each do |list_key, list_value|
#   if list_key == :todos
#     list_value.each { |todo| puts todo[:completed] = true } # What are we targeting?
#     # the values of `todo:` are hashes, so we still need to iterate through hash
#   end
# end


# todo_lists.each do |list|
#   if list[:list_name] == 'Homework'
#     list[:todos].each do |todo|  # acting on the element(hash) of the values of `todo:` key
#       puts todo[:completed] = true
#     end
#   end
# end

# puts todo_lists

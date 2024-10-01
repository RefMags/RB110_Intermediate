def select_fruit(produce_list)
  produce_key = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_key.size
    current_key = produce_key[counter]
    current_value = produce_list[current_key]


    if current_value == 'Fruit'
      selected_produce[current_key] = current_value
    end

    counter += 1
  end
  selected_produce
end



produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

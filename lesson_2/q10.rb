# fulfilled_orders =[
#   {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
#   {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
#   # rest of data
# ]


customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]


fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end
fulfilled_orders # [{customer_id: 12, customer_name: 'Emma Lopez'}, {customer_id: 32, customer_name: 'Michael Richards'}]

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    #  total + order[:order_value] if order[:order_fulfilled]
    order[:order_fulfilled] ? total + order[:order_value] : total
  end

  # puts order_value #  425.48, 120.00
  fulfilled_orders[index][:order_value] = order_value
end

puts fulfilled_orders

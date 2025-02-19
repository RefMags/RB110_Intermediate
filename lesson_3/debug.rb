def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[2] # the source of error is the referencing of an element beyond the boundaries of the array collection
end

make, model = car("Ford Mustang")
p make == "Ford"         # => true
p model.start_with?("M") # => NoMethodError: undefined method `start_with?' for nil:NilClass

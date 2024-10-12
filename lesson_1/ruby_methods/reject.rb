flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
rejected_flavors = flavors.reject { |flavor| puts flavor }
p rejected_flavors

flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
a = flavors.reject { |flavor| flavor.start_with?('s') }
p a

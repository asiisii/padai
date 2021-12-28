There are two types of numbers in Ruby
1. Integers : whole numbers. eg: 10
2. Floats : contain a decimal point. eg: 10.5

# To convert an integer to a float:
13.to_f #=> 13.0

# To convert a float to an integer:
13.0.to_i #=> 13

# Number methods
6.even? #=> true
7.even? #=> false

6.odd? #false
7.odd? #true

# Concatenation

# With the plus operator:
"Welcome " + "to " + "Ruby!"    #=> "Welcome to Ruby!"

# With the shovel operator:
"Welcome " << "to " << "Ruby!"  #=> "Welcome to Ruby!"

# With the concat method:
"Welcome ".concat("to ").concat("Ruby!")  #=> "Welcome to Ruby!"

# Substrings
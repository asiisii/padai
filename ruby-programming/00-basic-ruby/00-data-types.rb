There are two types of numbers in Ruby
1. Integers : whole numbers. eg: 10
2. Floats : contain a decimal point. eg: 10.5


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
"hello"[0]      #=> "h"
"hello"[0..1]   #=> "he"
"hello"[0, 4]   #=> "hell"
"hello"[-1]     #=> "o"

# Interpolation   
<!-- use double quotes for string interpolation -->
name = "Ruby"

puts "Hello, #{name}" #=> "Hello, Ruby"
puts 'Hello, #{name}' #=> "Hello, #{name}"

# String Methods

1. capitalize : "hello".capitalize #=> "Hello"
2. include? : "hello".include?("lo")  #=> true
3. upcase : "hello".upcase  #=> "HELLO"
4. downcase : "Hello".downcase  #=> "hello"
5. empty? : "hello".empty?  #=> false
6. length : "hello".length  #=> 5
7. reverse : "hello".reverse  #=> "olleh"
8. split : "hello world".split  #=> ["hello", "world"]           "hello".split("")    #=> ["h", "e", "l", "l", "o"] 
9. strip : " hello, world   ".strip  #=> "hello, world"


1. "he77o".sub("7", "l")           #=> "hel7o"

2. "he77o".gsub("7", "l")          #=> "hello"

3. "hello".insert(-1, " dude")     #=> "hello dude"

4. "hello world".delete("l")       #=> "heo word"

5. "!".prepend("hello, ", "world") #=> "hello, world!"


# Conversion
---------------------------------------------
# integer to a float:
13.to_f #=> 13.0

# float to an integer:
13.0.to_i #=> 13

# to string
5.to_s   #=> "5"
nil.to_s     #=> ""
:symbol.to_s     #=> "symbol"




def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"


--------------------------------------------------------------------------------------
PARAMETERS AND ARGUMENTS

def greet(name)         # name = parameter 
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!    <- Jogn = argument


# can assign a default value 

def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!






--------------------------------------------------------------------------------------
# examples

def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.

# method ends after the first return statement

def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name #=> "Joe Smith"

# For example, an explicit return can be useful when you want to write a method that checks for input errors before continuing.
def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.

--------------------------------------------------------------------------------------

CHAINING METHODS

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize           #=> "To be or not to be"







--------------------------------------------------------------------------------------

WHEN WE USE BANG (!) AT THE END OF THE METHOD IT UPDATES THE ORIGINAL VARIABLE

# like how i use console log, i can use "p variable_name"

pry-byebug

# Pry is a Ruby gem that provides you with an interactive REPL while program is running

# to use Pry-byebug, 
1. install it in terminal by running
    gem install pry-byebug

2. make it avaiable in your program by requiring it at the top
    require 'pry-byebug'

3. to use it, call "binding.pry"

#EXAMPLE

require 'pry-byebug'

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")


# Enter "next" to step over to the next line to see what happens on name = name.upcase

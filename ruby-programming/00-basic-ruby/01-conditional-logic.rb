if statement_to_be_evaluated == true
  # do something awesome...
end

# Eg:

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end

# if only one line of code to be evaluated we don't even need "end" keyword
puts "Hot diggity damn, 1 is less than 2" if 1 < 2

# if .. elsif....else..end
if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end

--------------------------------------------------------------------------------------
<=> (spaceship operator) returns the following:

-1 if the value on the left is less than the value on the right;
0 if the value on the left is equal to the value on the right; and
1 if the value on the left is greater than the value on the right.

# eg

5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1

--------------------------------------------------------------------------------------
# CASE STATEMENTS

grade = 'F'

case grade
  when 'A'
    puts "You're a genius"
    future_bank_account_balance = 5_000_000
  when 'D'
    puts "Better luck next time"
    can_i_retire_soon = false
  else
    puts "'YOU SHALL NOT PASS!' -Gandalf"
    fml = true
end


--------------------------------------------------------------------------------------
# unless : it only processes the code in the block if the expression evaluates to false

age = 18
puts "Welcome to a life of debt." unless age < 17

unless age < 17
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end


--------------------------------------------------------------------------------------
# Ternary Operator

response = age < 17 ? "You still have your entire life ahead of you." : "You're all grown up."







--------------------------------------------------------------------------------------









--------------------------------------------------------------------------------------







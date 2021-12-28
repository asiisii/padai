
Enumerables are a set of convenient built-in methods in Ruby that are included as part of both arrays and hashes


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

                    OR

friends.reject { |friend| friend == 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]


--------------------------------------------------------------------------------------
EACH METHOD

# #each returns the original array or hash regardless of what happens inside the code block.

ARRAY -------------
my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]

HASH ----------

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |pair| puts "the pair is #{pair}" }

the pair is ["one", 1]
the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}


--------------------------------------------------------------------------------------

MAP METHOD

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

# EG

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]


--------------------------------------------------------------------------------------

SELECT METHOD

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }           #=> ["Sharon", "Leo", "Leila", "Arun"]


# EG

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }

responses.select { |person, response| response == 'yes'}       #=> {"Sharon"=>"yes", "Arun"=>"yes"}



--------------------------------------------------------------------------------------

REDUCE METHOD

my_numbers = [5, 6, 7, 8]

# sum = accumulator
my_numbers.reduce { |sum, number| sum + number }         #=> 26


# ASSIGN A VALUE TO ACCUMULATOR

my_numbers.reduce(1000) { |sum, number| sum + number }     #=> 1026


# YOU CAN ASSIGN HASH.NEW AS DEFAULT VALUE TO ACCUMULATOR
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}
--------------------------------------------------------------------------------------


RETURING VALUES OF Enumerables

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends(friends)
 #=> ["Sharon", "Leo", "Leila", "Arun"]

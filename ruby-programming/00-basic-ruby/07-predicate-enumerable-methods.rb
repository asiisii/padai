INCLUDE?

numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true


# EG
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }

invited_list.include?('Brian')
#=> false




--------------------------------------------------------------------------------------
ANY?

# it returns "true" if any elements in array or hash match the condition within the block
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }    #=> true

numbers.any? { |number| number < 20 }      #=> false


--------------------------------------------------------------------------------------

ALL?
# it only returns true if all the elements in array or hash match

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }      #=> true

fruits.all? { |fruit| fruit.length > 6 }      #=> false



--------------------------------------------------------------------------------------

NONE?
# opposite of ALL? method. it reutrn "True" only if the conidtion in the block matches "none"
# of the elements in array or hash

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }      #=> true

fruits.none? { |fruit| fruit.length > 6 }       #=> false


# Ruby hashes are more advanced collections of data
# are similar to objects in JavaScript <============


my_hash = { 
  "a random word" => "ahoy", 
  "Dorothy's math test score" => 94, 
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {} 
}


hash = { 9 => "nine", :six => 6 }


--------------------------------------------------------------------------------------

#   ACCESSING VALUES

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals"

shoes["hiking"]   #=> nil
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"


--------------------------------------------------------------------------------------

# ADDING AND CHANGING DATA
shoes["fall"] = "sneakers"
shoes["summer"] = "flip-flops"


--------------------------------------------------------------------------------------

# REMOVING DATA
shoes.delete("summer")    #=> "flip-flops"


--------------------------------------------------------------------------------------

# METHODS

books = { 
  "Infinite Jest" => "David Foster Wallace", 
  "Into the Wild" => "Jon Krakauer" 
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]


--------------------------------------------------------------------------------------

# MERGING TWO HASHES

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }




--------------------------------------------------------------------------------------


# SYMBOLS AS HASH KEYS

# 'Rocket' syntax 
american_cars = { 
  :chevrolet => "Corvette", 
  :ford => "Mustang", 
  :dodge => "Ram" 
}
# 'Symbols' syntax
japanese_cars = { 
  honda: "Accord", 
  toyota: "Corolla", 
  nissan: "Altima" 
}

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"
--------------------------------------------------------------------------------------











--------------------------------------------------------------------------------------








--------------------------------------------------------------------------------------
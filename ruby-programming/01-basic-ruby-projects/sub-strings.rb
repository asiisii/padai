require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(strings, arr)
  strings = strings.downcase.split(" ")
  # binding.pry
  print strings
  found_str = strings.reduce(Hash.new(0)) do |obj, word|
    arr.each do |elem|
       obj[elem] += 1 if word.include?(elem)
    end
    obj
  end
  puts found_str
  found_str
end

substrings("below", dictionary)  # { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# 
# { 
#   "down" => 1, 
#   "go" => 1, 
#   "going" => 1, 
#   "how" => 2, 
#   "howdy" => 1, 
#   "it" => 2, 
#   "i" => 3, 
#   "own" => 1, 
#   "part" => 1, 
#   "partner" => 1, 
#   "sit" => 1 
# }
# while loop : 
---------
i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

----------
while gets.chomp != "yes" do
  puts "Will you go to prom with me?"
end



--------------------------------------------------------------------------------------
# until loop:
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

------------
until gets.chomp == "yes" do
  puts "Will you go to prom with me?"
end


--------------------------------------------------------------------------------------
# ranges : to define an interval. 

# inclusive : we will use ===>>> TWO DOTS <<<====
(1..5)  #=> 1, 2, 3, 4, 5


# exclusive : we will use ===>>> THREE DOTS <<<====
(1...5)   #=> 1, 2, 3, 4


--------------------------------------------------------------------------------------
# for loop:
for i in 0..5
  puts "#{i} zombies incoming!"
end


---------------------
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]

--------------------------------------------------------------------------------------
# times loop

5.times do
  puts "Hello, world!"
end

---------
5.times do |number|
  puts "Alternative fact number #{number}"
end

# first time it will output: Alternative fact number 0


--------------------------------------------------------------------------------------
# upto and downto loops:

5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5

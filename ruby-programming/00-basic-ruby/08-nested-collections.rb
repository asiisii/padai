----------> NESTED ARRAYS <----------

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes[0][0]       #=> "Adams"
teacher_mailboxes[0][-1]      #=> "Davis"
teacher_mailboxes[-1][0]      #=> "Perez"
teacher_mailboxes[-1][-2]     #=> "Smith"
--------------------------------------------------------------------------------------

ADDING AND REMOVING ELEMENTS

test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79]
]

test_scores << [88, 67, 64, 76]   #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76]]

test_scores[0].push(100)    #=> #=> [97, 76, 79, 93, 100]
test_scores  #=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76]]

test_scores[0].pop #=> 100
test_scores     #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76]]







--------------------------------------------------------------------------------------

ITERATING OVER A NESTED ARRAY

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]


teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end
#=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]

# to iterate over each elements we gotta nest another enumerable method inside 
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end
#=> Row:0 Column:0 = Adams
#=> Row:0 Column:1 = Baker
#=> Row:0 Column:2 = Clark
#=> Row:0 Column:3 = Davis
#=> Row:1 Column:0 = Jones
#=> Row:1 Column:1 = Lewis
#=> Row:1 Column:2 = Lopez
#=> Row:1 Column:3 = Moore
#=> Row:2 Column:0 = Perez
#=> Row:2 Column:1 = Scott
#=> Row:2 Column:2 = Smith
#=> Row:2 Column:3 = Young
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]


# to access only the teacher's name we can use FLATTEN <<<<----

teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is amazing!"
end
#=> Adams is amazing!
#=> Baker is amazing!
#=> Clark is amazing!
#=> Davis is amazing!
#=> Jones is amazing!
#=> Lewis is amazing!
#=> Lopez is amazing!
#=> Moore is amazing!
#=> Perez is amazing!
#=> Scott is amazing!
#=> Smith is amazing!
#=> Young is amazing!
#=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]
--------------------------------------------------------------------------------------





----------> NESTED HASHES <------------

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

ACCESSING DATA

vehicles[:alice][:year]       #=> 2019

ADDING AND REMOVING DATA

vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
#=> {:year=>2021, :make=>"Ford", :model=>"Escape"}
vehicles
#=> 
# {
#   :alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, 
#   :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, 
#   :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, 
#   :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}
# }
        ADD
vehicles[:dave][:color] = "red"
#=> 
# {
#   :alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, 
#   :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, 
#   :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, 
#   :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}
# }

      DELETE
vehicles.delete(:blake)
#=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
vehicles
#=> 
# {
#   :alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, 
#   :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, 
#   :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}
# }
--------------------------------------------------------------------------------------



vehicles.collect { |name, data| name if data[:year] >= 2020 }       #=> [nil, :caleb, :dave]

# The #compact method returns an array (or hash) without nil values, so let’s chain it on the end of the block.

vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact     #=> [:caleb, :dave]



vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]

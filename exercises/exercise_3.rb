require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Find store 3
# @store3 = Store.find(3)
# Destroy store 3
# @store3.destroy(3)
Store.find(3).destroy

# WHY WOULD WE EVER NEED TO LOAD THE THIRD STORE INTO @store3 if we're going to destroy it?
# IF statement, get the value, check against condition

# puts store.count
puts "---------------------------"
puts "STORE COUNT: #{Store.count}"

# https://stackoverflow.com/questions/4177686/how-do-you-delete-an-activerecord-object
# user.destroy
# User.find(15).destroy
# User.destroy(15)
# User.where(age: 20).destroy_all
# User.destroy_all(age: 20)
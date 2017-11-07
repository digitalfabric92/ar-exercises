require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# 1 Person.sum(:age) from stack overflow
puts "TOTAL REVENUE: ", Store.sum(:annual_revenue)
# 2 revenue/store
puts "AVERAGE REVENUE: ", Store.sum(:annual_revenue) / Store.count
# 3 .where ('annual_revnue' > 100000).count
puts "$1 MIL or More: ", Store.where("annual_revenue > ?", 1000000).count
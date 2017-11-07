require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Add 3 new stores
# * Surrey (annual_revenue of 224000, carries women's apparel only)
Surrey = Store.new
Surrey.name = 'Surrey'
Surrey.annual_revenue = 224000
Surrey.mens_apparel = false
Surrey.womens_apparel = true
Surrey.save

# * Whistler (annual_revenue of 1900000 carries men's apparel only)
Whistler = Store.new
Whistler.name = 'Whistler'
Whistler.annual_revenue = 1900000
Whistler.mens_apparel = true
Whistler.womens_apparel = false
Whistler.save

# * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
Yaletown = Store.new
Yaletown.name = 'Yaletown'
Yaletown.annual_revenue = 430000
Yaletown.mens_apparel = true
Yaletown.womens_apparel = true
Yaletown.save

# .where( mens_apparel: true)
@mens_stores = Store.where( mens_apparel: true)
# .each do |x| end
@mens_stores.each do |sto|
  puts "---------------------------"
  puts "#{sto.name} has an annual revenue of #{sto.annual_revenue}"
end

# carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.where( womens_apparel: true).where( "annual_revenue > ?", 1000000 )
# Select * from store where womens_apparel = true AND annual_revenue > 1000000
# @womens_stores = Store.where( womens_apparel: true, annual_revenue > 1000000)
# .each do |x| end
@womens_stores.each do |sto|
  puts "---------------------------"
  puts "#{sto.name} has an annual revenue of #{sto.annual_revenue}"
end
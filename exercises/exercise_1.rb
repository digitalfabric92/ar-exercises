require_relative '../setup'

puts "Exercise 1"
puts "---------------------------"

# * Richmond (annual_revenue of 300000, carries men's and women's apparel)
Burnaby = Store.new
Burnaby.name = 'Burnaby'
Burnaby.annual_revenue = 300000
Burnaby.mens_apparel = true
Burnaby.womens_apparel = true
Burnaby.save

# * Richmond (annual_revenue of 1260000 carries women's apparel only)
Richmond = Store.new
Richmond.name = 'Richmond'
Richmond.annual_revenue = 1260000
Richmond.mens_apparel = false
Richmond.womens_apparel = true
Richmond.save

# * Gastown (annual_revenue of 190000 carries men's apparel only)
Gastown = Store.new
Gastown.name = 'Gastown'
Gastown.annual_revenue = 190000
Gastown.mens_apparel = true
Gastown.womens_apparel = false
Gastown.save

puts "---------------------------"
puts "STORE COUNT: #{Store.count}"

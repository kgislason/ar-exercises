require_relative '../setup'

puts "//////////"
puts "----------"
puts "Exercise 1"
puts "----------"

# Your code goes below here ...
Store.create(name: "Burnaby", annual_revenue: 300000.00, womens_apparel: true, mens_apparel: true)
Store.create(name: "Richmond", annual_revenue: 1260000.00, mens_apparel: true)
Store.create(name: "Gastown", annual_revenue: 190000.00, womens_apparel: true)

puts "Store count: #{Store.all.count}"
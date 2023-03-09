require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Add new stores
store_surrey = Store.create(name: "Surrey", annual_revenue: 224000.00, womens_apparel: true)
puts store_surrey.name
store_whistler = Store.create(name: "Whistler", annual_revenue: 1900000.00, mens_apparel: true)
store_yaletown = Store.create(name: "Yaletown", annual_revenue: 430000.00, mens_apparel: true, womens_apparel: true)

# Query stores
puts "----------"
@mens_stores = Store.where(mens_apparel: true)
puts "Stores that carry men's apparel:"
for i in @mens_stores do
  puts "Store Name: #{i.name}, Annual Revenue: $#{i.annual_revenue}"
end

puts "----------"
@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")
puts "Stores that carry women's apparel and generate less than $1M in annual revenue:"
for i in @womens_stores do
  puts "Store Name: #{i.name}, Annual Revenue: $#{i.annual_revenue}"
end
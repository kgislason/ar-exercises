require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "//////////"
puts "----------"
puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total revenue for the entire company (all stores): $#{Store.sum(:annual_revenue)}"

puts "Average annual revenue for all stores: $#{Store.average(:annual_revenue)}"

puts "Stores generating $1M or more in annual sales: #{Store.where("annual_revenue >= 1000000").count}"

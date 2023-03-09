require_relative '../setup'
require_relative './exercise_1'

puts "//////////"
puts "----------"
puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by("id = 2")

puts "Store 1: #{@store1.name}"
puts "Store 2: #{@store2.name}"

@store1.name = "Burnaby is Awesome"
puts "Give store 1 a new name: #{@store1.name}"

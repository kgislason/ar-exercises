require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "//////////"
puts "----------"
puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "What is the name of the store?"
store_name = gets.chomp

new_store = Store.create(name: store_name)
if ! new_store.valid?
  @errors = new_store.errors
  for i in @errors do
    puts "Error: #{i.full_message}"
  end 
else
  new_store.save
end
# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record

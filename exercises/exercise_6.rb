require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "//////////"
puts "----------"
puts "Exercise 6"
puts "----------"

# Your code goes here ...

### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`

@store1.employees.create(first_name: "Gandalf", last_name: "Grey", hourly_rate: 200)

@store1.employees.create(first_name: "Bilbo", last_name: "Baggins", hourly_rate: 30)

@store1.employees.create(first_name: "Frodo", last_name: "Baggins", hourly_rate: 250)

@store1.employees.create(first_name: "Samwise", last_name: "Gamgee", hourly_rate: 30)

@store2.employees.create(first_name: "Aragorn", last_name: "King", hourly_rate: 200)

@store2.employees.create(first_name: "Boromir", last_name: "Not King", hourly_rate: 60)

@store2.employees.create(first_name: "Legolas", last_name: "Greenleaf", hourly_rate: 80)

@store4.employees.create(first_name: "Gimli", last_name: "son of Gloin", hourly_rate: 40)

@store5.employees.create(first_name: "Meriadoc", last_name: "Brandybuck", hourly_rate: 15)

@store5.employees.create(first_name: "Peregrin", last_name: "Took", hourly_rate: 12.50)

@store6.employees.create(first_name: "Elrond", last_name: "Lord of Imladris", hourly_rate: 100)

@store6.employees.create(first_name: "Arwen", last_name: "Princess of Imladris", hourly_rate: 60)

puts "Employee count: #{Employee.count}"
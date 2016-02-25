# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Chore.destroy_all
Worker.destroy_all
Customer.destroy_all
Order.destroy_all

# Chores
Chore.create({price: '7.00', worker_count: 0, chore_title: 'Walk Dog', chore_type: 'Individual'})
Chore.create({price: '13.00', worker_count: 0, chore_title: 'Pick Up Dry Cleaning', chore_type: 'Individual'})
Chore.create({price: '12.00', worker_count: 0, chore_title: 'Car Wash', chore_type: 'Individual'})
Chore.create({price: '9.50', worker_count: 0, chore_title: 'Clean Dishes', chore_type: 'Individual'})
Chore.create({price: '12.00', worker_count: 0, chore_title: 'Pick Up Mail', chore_type: 'Individual'})
Chore.create({price: '8.00', worker_count: 0, chore_title: 'Pick Up Snacks', chore_type: 'Individual'})
Chore.create({price: '13.50', worker_count: 0, chore_title: 'Pick Up Groceries', chore_type: 'Individual'})

# Workers
Worker.create({name: 'Bob', profile: 'Bob Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Rover', profile: 'Rover Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Lisa', profile: 'Lisa Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Blu', profile: 'Blu Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})


# Customers
Customer.create({history: 'none', name: 'Tim', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Mark', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Bill', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Nancy', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})

# Orders
# Order.create({status: 'Done', payment: 'Fully Paid', expected_start_date: 'Today At Noon'})
# Order.create({status: 'Not Started Yet', payment: 'Not Paid', expected_start_date: 'Tomorrow At Noon'})
# Order.create({status: 'In Progress', payment: 'Paid In Full', expected_start_date: 'Friday At Noon'})

# Order.first.customer = Customer.find_by({name: 'Tim'})
# Customer.find_by({name: 'Tim'}).orders << Order.first
# Order.second.customer = Customer.find_by({name: 'Mark'})
# Customer.find_by({name: 'Mark'}).orders << Order.second
# Order.last.customer = Customer.find_by({name: 'Bill'})
# Customer.find_by({name: 'Bill'}).orders << Order.last
#
# Order.first.chore = Chore.find_by({chore_title: 'Walk Dog'})
# Order.second.chore = Chore.find_by({chore_title: 'Pick Up Dry Cleaning'})
# Order.last.chore = Chore.find_by({chore_title: 'Clean Dishes'})
#
# Order.first.worker = Worker.find_by({name: 'Bob'})
# Order.second.worker = Worker.find_by({name: 'Rover'})
# Order.last.worker = Worker.find_by({name: 'Lisa'})

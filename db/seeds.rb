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
Chore.create({price: '13.50', worker_count: 0, chore_title: 'Clean Bathroom', chore_type: 'Individual'})
Chore.create({price: '7.00', worker_count: 0, chore_title: 'Do My Taxes', chore_type: 'Individual'})
Chore.create({price: '13.00', worker_count: 0, chore_title: 'Pick Up Parents From Airport', chore_type: 'Individual'})
Chore.create({price: '12.00', worker_count: 0, chore_title: 'Pick Up Chrismas Tree', chore_type: 'Individual'})
Chore.create({price: '9.50', worker_count: 0, chore_title: 'Edit Video', chore_type: 'Individual'})
Chore.create({price: '12.00', worker_count: 0, chore_title: 'Return A Library Book', chore_type: 'Individual'})
Chore.create({price: '8.00', worker_count: 0, chore_title: 'Drop Off Prescription At Pharmacy', chore_type: 'Individual'})
Chore.create({price: '13.50', worker_count: 0, chore_title: 'Organize My Documents', chore_type: 'Individual'})
Chore.create({price: '7.00', worker_count: 0, chore_title: 'Apply For A Patent', chore_type: 'Individual'})
Chore.create({price: '13.00', worker_count: 0, chore_title: 'Pick Up My College Textbooks', chore_type: 'Individual'})
Chore.create({price: '12.00', worker_count: 0, chore_title: 'Clean My Boat', chore_type: 'Individual'})
Chore.create({price: '9.50', worker_count: 0, chore_title: 'Clean Dishes', chore_type: 'Individual'})
Chore.create({price: '12.00', worker_count: 0, chore_title: 'Pick Up My Contacts', chore_type: 'Individual'})
Chore.create({price: '8.00', worker_count: 0, chore_title: 'Take My Bike To The Bike Repair Store', chore_type: 'Individual'})
Chore.create({price: '13.50', worker_count: 0, chore_title: 'Take Out My Trash', chore_type: 'Individual'})

# Workers
Worker.create({name: 'Bob', profile: 'Bobs Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Rover', profile: 'Rovers Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Lisa', profile: 'Lisas Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Blu', profile: 'Blus Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Timmy', profile: 'Timmys Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Thomas', profile: 'Thomas Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Veronica', profile: 'Veronicas Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'River', profile: 'Rivers Profile Content', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})



# Customers
Customer.create({history: 'none', name: 'Tim', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Mark', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Bill', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Nancy', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'admin-private', password: 'five', password_confirmation: 'five', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Steve', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Homer', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Hermes', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Zues', password: 'tim', password_confirmation: 'tim', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})
Customer.create({history: 'none', name: 'Athena', password: 'five', password_confirmation: 'five', credit_card_info: '1111-0000-4444-6666', cart: 'empty', my_chores: 'empty'})

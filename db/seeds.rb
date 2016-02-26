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
Worker.create({name: 'Bob', profile: 'Bobs Profile Content Maecenas ornare nisi in laoreet rutrum. In sit amet mauris eleifend ligula dignissim interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In hac habitasse platea dictumst. Vivamus ipsum orci, iaculis eu porttitor sit amet, consequat nec tortor. Mauris a gravida lorem. Cras consequat non nisl eu suscipit. Cras nunc tellus, cursus id eleifend sed, suscipit ac leo. Nullam fermentum venenatis nunc. Proin tempor sollicitudin dictum. Nullam ut quam erat. Vestibulum ac metus ante. Sed eu ipsum felis. Curabitur ut eros vulputate, fermentum massa in, facilisis nisl.

Vestibulum arcu felis, maximus at maximus elementum, dignissim nec felis. Morbi porta orci eget ante molestie, ut tincidunt lectus blandit. Mauris ac turpis magna. Nunc in neque in neque ullamcorper interdum vel vel diam. Aliquam vulputate vel neque vitae egestas. Sed vehicula rutrum maximus. Aliquam ac mauris sed odio vehicula auctor at ac augue. Etiam posuere arcu enim, at condimentum dui consectetur finibus. In lorem nisl, porttitor eget turpis sed, suscipit fringilla felis. Nulla laoreet lectus nec ex suscipit, nec malesuada velit imperdiet. Phasellus blandit tellus sed est molestie, sit amet convallis odio euismod. Sed laoreet auctor volutpat. Nunc at arcu non risus tincidunt aliquam.', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Rover', profile: 'Rovers Profile Content In tincidunt laoreet nibh sit amet viverra. Curabitur mollis nunc eget diam tincidunt porta. Ut maximus nibh quis suscipit vestibulum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec auctor tincidunt neque ac lobortis. Maecenas posuere quis lectus et egestas. Donec varius, quam vitae malesuada imperdiet, risus turpis semper erat, sed eleifend leo tellus bibendum arcu. Duis convallis metus et fringilla vulputate. Suspendisse potenti. Pellentesque consequat magna eu nisl bibendum rutrum. Suspendisse a tincidunt sem. Sed pharetra ante eget mi fringilla, a facilisis dui elementum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sed rutrum ipsum.

Pellentesque vehicula pharetra risus, at luctus magna malesuada eu. Aliquam erat volutpat. Nam tempus magna at ullamcorper euismod. Nam venenatis, urna non sagittis molestie, nisl sapien imperdiet lacus, vitae malesuada odio libero a ligula. Sed maximus ullamcorper mauris a varius. Duis lobortis mauris a ex fermentum, eget luctus felis porta. Nulla erat arcu, aliquet non sagittis quis, feugiat nec massa. Sed elit sem, varius sed dolor ac, rutrum pretium eros. Nunc volutpat sapien nec imperdiet tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin mollis maximus tortor, in elementum dui venenatis non. Maecenas sed elit enim.', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Lisa', profile: 'Lisas Profile Content Integer tellus justo, finibus ut sagittis sit amet, aliquet vestibulum velit. Nam lacus lacus, consequat vel fringilla feugiat, vestibulum non metus. Duis at consequat nisl. Aenean euismod sagittis orci ut interdum. Sed justo arcu, dignissim eget elit ac, iaculis ullamcorper magna. Donec interdum elementum ligula, vitae accumsan tellus ultrices non. Aenean mattis urna sit amet nunc vulputate, vitae rutrum urna bibendum. Nam iaculis blandit tincidunt. Nullam mauris est, pellentesque vel imperdiet id, molestie in erat. Nulla a massa ultrices, hendrerit lectus commodo, vestibulum nisl. Pellentesque malesuada vestibulum lorem. Donec commodo maximus pharetra. Donec fringilla, mi a hendrerit sagittis, eros tellus sodales dui, ut dignissim ex quam ornare quam. Integer porttitor nisl lorem, at sodales eros convallis eget.

Nam varius consectetur mi, a interdum mauris rhoncus nec. Integer elementum dui et lorem ornare finibus. Mauris vel finibus nunc. Proin justo metus, fermentum a finibus sed, varius ac justo. Nullam fringilla, urna vitae blandit dictum, nisi ipsum aliquam urna, vitae sodales urna leo ut justo. Fusce ut sapien fermentum, dapibus justo sed, eleifend odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In a nisl blandit, aliquam metus quis, venenatis velit. Duis lectus purus, tristique ut tristique non, fermentum eget odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Blu', profile: 'Blus Profile Content Morbi blandit molestie urna ac iaculis. Nam venenatis orci a porttitor sodales. Nulla id justo nibh. Suspendisse nec enim lectus. Fusce finibus magna et elit scelerisque, nec fringilla elit aliquam. Vestibulum commodo efficitur risus sed dignissim. Maecenas non convallis ante, at congue mauris. Nunc sagittis ante ac purus sodales, id ultricies tortor laoreet. Ut venenatis condimentum erat et viverra. Aenean velit enim, placerat quis massa id, ornare mollis nisl. Nunc eu vehicula nunc. Phasellus eu nisl vel eros eleifend sagittis eget sit amet purus. Sed auctor, odio nec mollis vulputate, quam metus accumsan est, nec faucibus arcu arcu non dui. Sed ac cursus lorem, id tincidunt nunc. Aenean at pharetra ligula, sed tempor turpis.

Donec at enim nunc. Donec viverra venenatis dolor quis rhoncus. Aenean iaculis ullamcorper lorem id volutpat. Aenean id tempor dolor, iaculis consectetur ante. Nunc felis dui, bibendum consectetur gravida non, tincidunt ut eros. Nullam gravida at turpis ac ornare. Duis at urna mi. Donec rutrum erat vitae diam pharetra dignissim. Aliquam sed erat sed nibh aliquam mattis. Nunc vel sem vitae neque egestas mattis. In fringilla massa id diam rutrum suscipit. Proin semper id turpis a posuere. Pellentesque et nulla eget leo iaculis viverra.

', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Timmy', profile: 'Timmys Profile Content Suspendisse vel massa iaculis, pulvinar magna nec, consequat est. Nunc sollicitudin ligula nec rhoncus ultricies. Ut luctus placerat lorem, id pretium est facilisis lacinia. Etiam non sapien luctus, volutpat turpis a, consectetur odio. Aliquam nec ipsum porttitor, luctus magna ac, tristique lectus. Praesent non viverra tellus. Ut sed turpis molestie, porta purus lacinia, interdum massa.

Morbi nec dui eget justo ultrices ullamcorper. Maecenas finibus lacus vitae arcu maximus, sed euismod nisi efficitur. Sed mi lacus, porttitor sit amet interdum eget, imperdiet non erat. Donec in mattis justo. In hac habitasse platea dictumst. Suspendisse iaculis vitae risus quis luctus. Aliquam id aliquam lorem, sed viverra quam. Curabitur dictum arcu vitae lorem scelerisque consequat. Nullam commodo risus sed purus tristique tincidunt. Suspendisse varius turpis quis elit eleifend, eget placerat mi rutrum.', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Thomas', profile: 'Thomas Profile Content Suspendisse vel massa iaculis, pulvinar magna nec, consequat est. Nunc sollicitudin ligula nec rhoncus ultricies. Ut luctus placerat lorem, id pretium est facilisis lacinia. Etiam non sapien luctus, volutpat turpis a, consectetur odio. Aliquam nec ipsum porttitor, luctus magna ac, tristique lectus. Praesent non viverra tellus. Ut sed turpis molestie, porta purus lacinia, interdum massa.

Morbi nec dui eget justo ultrices ullamcorper. Maecenas finibus lacus vitae arcu maximus, sed euismod nisi efficitur. Sed mi lacus, porttitor sit amet interdum eget, imperdiet non erat. Donec in mattis justo. In hac habitasse platea dictumst. Suspendisse iaculis vitae risus quis luctus. Aliquam id aliquam lorem, sed viverra quam. Curabitur dictum arcu vitae lorem scelerisque consequat. Nullam commodo risus sed purus tristique tincidunt. Suspendisse varius turpis quis elit eleifend, eget placerat mi rutrum.', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'Veronica', profile: 'Veronicas Profile Content Suspendisse vel massa iaculis, pulvinar magna nec, consequat est. Nunc sollicitudin ligula nec rhoncus ultricies. Ut luctus placerat lorem, id pretium est facilisis lacinia. Etiam non sapien luctus, volutpat turpis a, consectetur odio. Aliquam nec ipsum porttitor, luctus magna ac, tristique lectus. Praesent non viverra tellus. Ut sed turpis molestie, porta purus lacinia, interdum massa.

Morbi nec dui eget justo ultrices ullamcorper. Maecenas finibus lacus vitae arcu maximus, sed euismod nisi efficitur. Sed mi lacus, porttitor sit amet interdum eget, imperdiet non erat. Donec in mattis justo. In hac habitasse platea dictumst. Suspendisse iaculis vitae risus quis luctus. Aliquam id aliquam lorem, sed viverra quam. Curabitur dictum arcu vitae lorem scelerisque consequat. Nullam commodo risus sed purus tristique tincidunt. Suspendisse varius turpis quis elit eleifend, eget placerat mi rutrum.', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})
Worker.create({name: 'River', profile: 'Rivers Profile Content Suspendisse vel massa iaculis, pulvinar magna nec, consequat est. Nunc sollicitudin ligula nec rhoncus ultricies. Ut luctus placerat lorem, id pretium est facilisis lacinia. Etiam non sapien luctus, volutpat turpis a, consectetur odio. Aliquam nec ipsum porttitor, luctus magna ac, tristique lectus. Praesent non viverra tellus. Ut sed turpis molestie, porta purus lacinia, interdum massa.

Morbi nec dui eget justo ultrices ullamcorper. Maecenas finibus lacus vitae arcu maximus, sed euismod nisi efficitur. Sed mi lacus, porttitor sit amet interdum eget, imperdiet non erat. Donec in mattis justo. In hac habitasse platea dictumst. Suspendisse iaculis vitae risus quis luctus. Aliquam id aliquam lorem, sed viverra quam. Curabitur dictum arcu vitae lorem scelerisque consequat. Nullam commodo risus sed purus tristique tincidunt. Suspendisse varius turpis quis elit eleifend, eget placerat mi rutrum.', password: 'bob', password_confirmation: 'bob', reccurring_customers: 'none', availability: 'Available'})



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

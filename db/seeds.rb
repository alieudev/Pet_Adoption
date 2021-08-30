# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.destroy_all
Pet.destroy_all

Shelter.create(location: 'New York', name:'Love Animals', capacity:15)
Shelter.create(location: 'Flordia', name:'All welcome', capacity:50)

Pet.create(breed: 'dog', name: 'bronx', age:2, weight:10, gps_chip: true, shelter_id:1)
Pet.create(breed: 'cat', name: 'brooklyn', age:1, weight:10, gps_chip: true, shelter_id:1)
Pet.create(breed: 'cat', name: 'queens', age:3, weight:15, gps_chip: false, shelter_id:2)
Pet.create(breed: 'dog', name: 'manhattan', age:5, weight:10, gps_chip: false, shelter_id:1)
Pet.create(breed: 'snake', name: 'dorry', age:2, weight:50, gps_chip: true, shelter_id:2)
Pet.create(breed: 'dog', name: 'max', age:1, weight:30, gps_chip: true, shelter_id:2)
Pet.create(breed: 'cat', name: 'dude', age:1, weight:18, gps_chip: false, shelter_id:1)

puts 'done seeding!'
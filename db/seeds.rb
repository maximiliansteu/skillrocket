# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create(name: "This is a test")

puts "#{Course.all.count} was created"

User.create(email: "max@fount.io", password: "leWagon1234", first_name: "Tom", last_name: "The Boy")

puts "#{User.all.count} was created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "clean data"

Booking.destroy_all
Course.destroy_all
User.destroy_all

puts "insert data"

User.create(email: "student@fount.io", password: "student123", first_name: "Tom", last_name: "Student")
User.create(email: "teacher@fount.io", password: "teacher123", first_name: "Tim", last_name: "Teacher")

puts "#{User.all.count} users were created"

Course.create(name: "Rock Climbing 101", user_id: 2)
puts "#{Course.all.count} courses were created"

Booking.create(user_id: 1, course_id: 1)
puts "#{Course.all.count} bookings were created"

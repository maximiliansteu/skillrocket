# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "clean data"

Booking.destroy_all
Course.destroy_all
User.destroy_all

puts "insert data"
text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
                           Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur."

student_one = User.create!(email: "student@fount.io",
                           password: "student123",
                           first_name: "Tom",
                           last_name: "Student",
                           biography: text,
                          country: "Spain",
                          city: "Barcelona",
                          instagram_handle: "https://instagram.com",
                          linked_in_handle: "https://linkedin.com",
                          homepage_url: "https://google.com")

file = URI.open('https://source.unsplash.com/rDEOVtE7vOs')
student_one.photo.attach(io: file, filename: 'student_one.png', content_type: 'image/png')

teacher_one = User.create!(email: "teacher@fount.io",
                           password: "teacher123",
                           first_name: "Tim",
                           last_name: "Teacher",
                           biography: text,
                            country: "Spain",
                            city: "Barcelona",
                            instagram_handle: "https://instagram.com",
                            linked_in_handle: "https://linkedin.com",
                            homepage_url: "https://google.com")

file = URI.open('https://source.unsplash.com/X6Uj51n5CE8')
teacher_one.photo.attach(io: file, filename: 'teacher_one.png', content_type: 'image/png')

teacher_two = User.create!(email: "teacher2@fount.io",
                           password: "teacher123",
                           first_name: "Terry",
                           last_name: "Teacher",
                           biography: text,
                            country: "Spain",
                            city: "Madrid",
                            instagram_handle: "https://instagram.com",
                            linked_in_handle: "https://linkedin.com",
                            homepage_url: "https://google.com")

file = URI.open('https://source.unsplash.com/cdksyTqEXzo')
teacher_two.photo.attach(io: file, filename: 'teacher_two.png', content_type: 'image/png')

teacher_three = User.create!(email: "teacher3@fount.io",
                             password: "teacher123",
                             first_name: "John",
                             last_name: "Teacher",
                              biography: text,
                              country: "Spain",
                              city: "Madrid",
                              instagram_handle: "https://instagram.com",
                              linked_in_handle: "https://linkedin.com",
                              homepage_url: "https://google.com")

file = URI.open('https://source.unsplash.com/HD8KlyWRYYM')
teacher_three.photo.attach(io: file, filename: 'teacher_three.png', content_type: 'image/png')

puts "#{User.all.count} users were created"

course_one = Course.create(name: "Rock Climbing 101",
                           description: "This is about how you learn to rockclimb",
                           price: 20,
                           category: "Sports",
                           location: "C/ Joaquim Ruyra, 08025, Barcelona",
                           content: text,
                           user: teacher_one)

file = URI.open('https://source.unsplash.com/w5hNCbJfX3w')
course_one.photo.attach(io: file, filename: 'climbing.png', content_type: 'image/png')

course_two = Course.create!(name: "Learn CSS",
                            description: "CSS helps you for all kind of styling",
                            price: 30,
                            category: "Coding",
                            location: "Carrer de Joaquim Ruyra, 08025, Bcn",
                            content: text,
                            user: teacher_one)

file = URI.open('https://source.unsplash.com/OqtafYT5kTw')
course_two.photo.attach(io: file, filename: 'coding.png', content_type: 'image/png')

course_three = Course.create!(name: "Become a better writer",
                              description: "Writing is a superpower that we all benefit from",
                              price: 25,
                              category: "Writing",
                              location: "Plaça Catalana, 08032, Bcn",
                              content: text,
                              user: teacher_two)

file = URI.open('https://source.unsplash.com/505eectW54k')
course_three.photo.attach(io: file, filename: 'writing.png', content_type: 'image/png')

course_four = Course.create!(name: "Integrated Mindfulness",
                             description: "Mindfulness helps you to become the best version of yourself",
                             price: 28,
                             category: "Health",
                             location: "Plaça Catalana, 08032 Bcn",
                             content: text,
                             user: teacher_three)

file = URI.open('https://source.unsplash.com/S297j2CsdlM')
course_four.photo.attach(io: file, filename: 'mindful.png', content_type: 'image/png')

course_five = Course.create!(name: "Start you own company",
                             description: "How to actually create a new company. Not as hard as you think.",
                             price: 25,
                             category: "Business",
                             location: "Baixada del Monestir, 9, 08034, Bcn",
                             content: text,
                             user: teacher_three)

file = URI.open('https://source.unsplash.com/Y_LgXwQEx2c')
course_five.photo.attach(io: file, filename: 'company.png', content_type: 'image/png')

course_five = Course.create!(name: "Become a hermit",
                             description: "Gardening is an amazing experience. You should try.",
                             price: 45,
                             category: "Gardening",
                             location: "C/ Tallers, 1, 08001, Bcn",
                             content: text,
                             user: teacher_two)

file = URI.open('https://source.unsplash.com/qWRFE0ctlJk')
course_five.photo.attach(io: file, filename: 'gardening.png', content_type: 'image/png')

puts "#{Course.all.count} courses were created"

Booking.create!(user: student_one, course: course_one, start_date: Date.today, end_date: Date.today + 5)
Booking.create!(user: teacher_one, course: course_four, start_date: Date.today, end_date: Date.today + 5)
puts "#{Booking.all.count} bookings were created"

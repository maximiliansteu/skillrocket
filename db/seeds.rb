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

student_one = User.create!(email: "student@fount.io", password: "student123", first_name: "Tom", last_name: "Student")
teacher_one = User.create!(email: "teacher@fount.io", password: "teacher123", first_name: "Tim", last_name: "Teacher")
teacher_two = User.create!(email: "teacher2@fount.io", password: "teacher123", first_name: "Tim", last_name: "Teacher")
teacher_three = User.create!(email: "teacher3@fount.io", password: "teacher123", first_name: "John", last_name: "Teacher")

puts "#{User.all.count} users were created"

course_one = Course.create(name: "Rock Climbing 101",
                           description: "This is about how you learn to rockclimb",
                           price: 20,
                           category: "Sports",
                           location: "Barcelona, Spain",
                           content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
                           Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
                           user: teacher_one)

file = URI.open('https://source.unsplash.com/w5hNCbJfX3w')
course_one.photo.attach(io: file, filename: 'climbing.png', content_type: 'image/png')

course_two = Course.create!(name: "Learn CSS",
                            description: "CSS helps you for all kind of styling",
                            price: 30,
                            category: "Coding",
                            location: "Madrid, Spain",
                            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
                            Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
                            user: teacher_one)

file = URI.open('https://source.unsplash.com/OqtafYT5kTw')
course_two.photo.attach(io: file, filename: 'coding.png', content_type: 'image/png')

course_three = Course.create!(name: "Become a better writer",
                              description: "Writing is a superpower that we all benefit from",
                              price: 25,
                              category: "Writing",
                              location: "Denmark, Copenhagen",
                              content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
                              Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
                              user: teacher_two)

file = URI.open('https://source.unsplash.com/505eectW54k')
course_three.photo.attach(io: file, filename: 'writing.png', content_type: 'image/png')

course_four = Course.create!(name: "Integrated Mindfulness",
                             description: "Mindfulness helps you to become the best version of yourself",
                             price: 28,
                             category: "Mental Health",
                             location: "Remote",
                             content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
                             Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
                             user: teacher_two)

file = URI.open('https://source.unsplash.com/S297j2CsdlM')
course_four.photo.attach(io: file, filename: 'mindful.png', content_type: 'image/png')

course_five = Course.create!(name: "Start you own company",
                             description: "How to actually create a new company. Not as hard as you think.",
                             price: 25,
                             category: "Business",
                             location: "Remote",
                             content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
                             Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
                             user: teacher_three)

file = URI.open('https://source.unsplash.com/Y_LgXwQEx2c')
course_five.photo.attach(io: file, filename: 'company.png', content_type: 'image/png')

puts "#{Course.all.count} courses were created"

Booking.create!(user: student_one, course: course_one, start_date: Date.today, end_date: Date.today + 5)
puts "#{Booking.all.count} bookings were created"

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
User.create(email: "teacher@fount.io", password: "teacher123", first_name: "Tim", last_name: "Teacher")
User.create(email: "teacher2@fount.io", password: "teacher123", first_name: "John", last_name: "Teacher")

puts "#{User.all.count} users were created"

Course.create(name: "Rock Climbing 101",
              description: "This is about how you learn to rockclimb",
              price: 20,
              category: "Sports",
              location: "Barcelona, Spain",
              content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
              Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
              user_id: 2)
Course.create(name: "Learn CSS",
              description: "CSS helps you for all kind of styling",
              price: 30,
              category: "Coding",
              location: "Madrid, Spain",
              content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
              Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
              user_id: 2)
Course.create(name: "Become a better writer",
              description: "Writing is a superpower that we all benefit from",
              price: 25,
              category: "Writing",
              location: "Denmark, Copenhagen",
              content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
              Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
              user_id: 3)
Course.create(name: "Integrated Mindfulness",
              description: "Mindfulness helps you to become the best version of yourself",
              price: 28,
              category: "Mental Health",
              location: "Remote",
              content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
              Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
              user_id: 3)
Course.create(name: "Start you own company",
              description: "How to actually create a new company. Not as hard as you think.",
              price: 25,
              category: "Business",
              location: "Remote",
              content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dictum est quis erat mattis pharetra. Proin at hendrerit ipsum, aliquet placerat dolor. Integer vestibulum turpis eu eros laoreet scelerisque. Vivamus ligula quam, eleifend vel dapibus a, ultricies sit amet sem.
              Quisque eleifend, neque sed sagittis lacinia, nunc felis laoreet purus, in vehicula massa ante non odio. Vivamus purus dui, maximus non viverra sed, egestas at risus. Sed sed molestie magna, non feugiat felis. Mauris ornare mauris id auctor tempor. Quisque convallis malesuada consectetur.",
              user_id: 3)

puts "#{Course.all.count} courses were created"

Booking.create(user_id: 1, course_id: 1)
puts "#{Course.all.count} bookings were created"

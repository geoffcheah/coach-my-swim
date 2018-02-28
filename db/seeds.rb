# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying previous seed"

Booking.destroy_all
Lesson.destroy_all
User.destroy_all

puts "Seeding Users and Lessons"

user = User.create(email: "geoffcheah@gmail.com", password: "123456", first_name: "Geoffrey", last_name: "Cheah", photo: "File_001" )
lesson = Lesson.create(user: user,
    price: 10,
    bio: "Almost drowned when I was little",
    speciality: "Freestyle",
    ability: "Level 3")

User.create(email: "a.p.hughes@live.com", password: "123456", first_name: "Alex", last_name: "Hughes", photo: "alex" )

u = User.create(email: "leishman.kirsty", password: "123456", first_name: "Kirsty", last_name: "Leishman", photo: "http://res.cloudinary.com/dl8jzr6kn/image/upload/v1519835396/profile_default.png")
l = Lesson.create(user: u,
    price: 10,
    bio: "I won every medal possible",
    speciality: "Backstroke",
    ability: "Level 2")

5.times do
  us = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, photo: "http://res.cloudinary.com/dl8jzr6kn/image/upload/v1519835396/profile_default.png")
  le = Lesson.create(user: us,
    price: 10,
    bio: "Almost drowned when I was little",
    speciality: "Freestyle",
    ability: "Level 1")
end


puts "finished"

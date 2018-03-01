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

user = User.create(email: "geoffcheah@gmail.com", password: "123456", first_name: "Geoffrey", last_name: "Cheah", photo: "profile_default", coach: true)
lesson = Lesson.create(user: user,
    price: 10,
    bio: "Almost drowned when I was little",
    speciality: "Freestyle",
    ability: "Level 3")

User.create(email: "a.p.hughes@live.com", password: "123456", first_name: "Alex", last_name: "Hughes", photo: "profile_default")

u = User.create(email: "leishman.kirsty@gmail.com", password: "123456", first_name: "Kirsty", last_name: "Leishman", photo: "profile_default", coach: true)
l = Lesson.create(user: u,
    price: 10,
    bio: "I won every medal possible",
    speciality: "Backstroke",
    ability: "Level 2")

5.times do
  us = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, photo: "profile_default")
  le = Lesson.create(user: us,
    price: 10,
    bio: "Almost drowned when I was little",
    speciality: "Freestyle",
    ability: "Level 1")
end


puts "finished"

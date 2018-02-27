# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying previous seed"

Lesson.destroy_all
User.destroy_all

puts "Seeding Users and Lessons"

5.times do
  user = User.create(email: Faker::Internet.email, password: "123456")
  lesson = Lesson.create(user: user,
    price: 10,
    bio: "Almost drowned when I was little",
    speciality: "Freestyle",
    ability: "Level 1")
end

puts "creating swimmers"

5.times do
  User.create(email: Faker::Internet.email, password: "123456")
end

puts "finished"

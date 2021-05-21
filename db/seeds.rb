# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "cleaning the database"
Movie.destroy_all
puts "DB cleaned"

puts "Creating some movies"

10.times do
  Movie.create(
    title: Faker::Book.title,
    overview: Faker::Lorem.sentence,
    poster_url: Faker::Internet.url
  )
end

puts "Done!"

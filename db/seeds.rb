require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)
puts 'starting'
5.times do (restaurant = Restaurant.create(name: Faker::Restaurant.name, address: 'Pilar',
                              phone_number: '11 58 49 55 66', category: 'belgian')
  Review.create(content: Faker::Restaurant.description, rating: rand(0..5), restaurant_id: restaurant))
end

puts 'ending'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
puts "Cleaning the database..."
Restaurant.destroy_all


puts "Creating 5 restaurants..."
cat = ["chinese", "italian", "japanese", "french", "belgian"].sample
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: cat
    )

  restaurant.save!
  puts "#{restaurant.name} created!"
end

puts "Seeded ended!"
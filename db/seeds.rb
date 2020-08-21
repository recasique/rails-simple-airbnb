# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'

puts 'Creating data'

10.times do
  Flat.create(
    name: Faker::Name.name,
    address: Faker::Address.street_name,
    description: Faker::Movies::StarWars.quote,
    price_per_night: rand(100..250),
    number_of_guests: rand(1..10)
    )
end

puts 'Data completed!'

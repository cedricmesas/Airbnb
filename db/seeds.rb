# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Création des 20 villes
20.times do
    city = City.create(city_name: Faker::Address.city) 
end

puts "city data created"

# Création des 20 dogs
20.times do
    dog = Dog.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, age: Faker::Number.within(range: 1..20), city_id: rand((City.first.id)..(City.last.id)))
end

puts "dog data created"

# Création des 20 dogsitters
20.times do
    dogsitter = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.within(range: 1..79), city_id: rand((City.first.id)..(City.last.id)))
end

puts "dogsitter data created"
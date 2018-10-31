require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all

p "old data destroyed"


category_array = ["kitchen", "garden", "house", "vehicles"]

10.times do
 item = Item.new(
   title: Faker::Pokemon.move,
   description: Faker::ElectricalComponents.active,
   price: rand(1..200),
   category: category_array.sample
   )

 item.save!
end

p "items created"

p "Creating hosts"

host1 = User.new(
   first_name: "Darlene",
   last_name: Faker::Artist.name,
   email: "abc1@gmail.com",
   password: Faker::Pokemon.name,
   address: "Milano"
   )

host1.save!

host2 = User.new(
   first_name: "Lucy",
   last_name: Faker::Artist.name,
   email: "abc2@gmail.com",
   password: Faker::Pokemon.name,
   address: "Milano"
   )

host2.save!

host3 = User.new(
   first_name: "Nico",
   last_name: Faker::Artist.name,
   email: "abc3@gmail.com",
   password: Faker::Pokemon.name,
   address: "Milano"
   )

host3.save!

host4 = User.new(
   first_name: "Fra",
   last_name: Faker::Artist.name,
   email: "abc4@gmail.com",
   password: Faker::Pokemon.name,
   address: "Milano"
   )

host4.save!

host5 = User.new(
   first_name: "Marco",
   last_name: Faker::Artist.name,
   email: "abc5@gmail.com",
   password: Faker::Pokemon.name,
   address: "Milano"
   )

host5.save!

p "Created hosts"

p "Creating users"

10.times do
user = User.new(
   first_name: Faker::Company.name,
   last_name: Faker::Artist.name,
   email: "#{Faker::Pokemon.name}@gmail.com",
   password: "ABCDEFOASFJFA)2124",
   address: "Milano"
   )
user.save!
end

p "Done"





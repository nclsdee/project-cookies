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
   password: "assdfuahgihaga",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host1.save!

host2 = User.new(
   first_name: "Lucy",
   last_name: Faker::Artist.name,
   email: "abc2@gmail.com",
   password: "assdfuahgihaga",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host2.save!

host3 = User.new(
   first_name: "Nico",
   last_name: Faker::Artist.name,
   email: "abc3@gmail.com",
   password: "assdfuahgihaga",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host3.save!

host4 = User.new(
   first_name: "Fra",
   last_name: Faker::Artist.name,
   email: "abc4@gmail.com",
   password: "assdfuahgihaga",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host4.save!

host5 = User.new(
   first_name: "Marco",
   last_name: Faker::Artist.name,
   email: "abc5@gmail.com",
   password: "assdfuahgihaga",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
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
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )
user.save!
end

p "Creating reservations"

reservation = Reservation.new(
  date_from: "2019-01-02",
  date_to: "2019-01-03",
  item_id: Item.first.id,
  host_id: User.first.id,
  customer_id: User.last.id
  )

reservation.save!

reservation = Reservation.new(
  date_from: "2019-01-03",
  date_to: "2019-01-04",
  item_id: Item.last.id,
  host_id: User.last.id,
  customer_id: User.first.id
  )

reservation.save!

reservation = Reservation.new(
  date_from: "2019-01-03",
  date_to: "2019-01-04",
  item_id: Item.first.id,
  host_id: User.last.id,
  customer_id: User.first.id
  )

reservation.save!


reservation = Reservation.new(
  date_from: "2019-01-03",
  date_to: "2019-01-04",
  item_id: Item.last.id,
  host_id: User.first.id,
  customer_id: User.last.id
  )

reservation.save!


p "Done"





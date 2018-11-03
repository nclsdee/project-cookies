  require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Item.destroy_all
User.destroy_all


p "old data destroyed"



category_array = ["kitchen", "garden", "construction", "painting", "other"]
city = ["Milano, Metropolitan City of Milan, Italy", "Sori", "Roma", "Venezia", "Cologna Spiaggia"]
address = ["Corso Magenta, 52, Milan, Metropolitan City of Milan, Italy", "Università Bocconi, Via Roberto Sarfatti, Milan, Metropolitan City of Milan, Italy", "Via Valenza, 15, Milan, Metropolitan City of Milan, Italy", "Duomo di Milano Italy, Piazza del Duomo, Milan, Metropolitan City of Milan, Italy", "N'Ombra de Vin, Via San Marco, Milan, Metropolitan City of Milan, Italy", "Starbucks Reserve Roastery Milano, Piazza Cordusio, Milan, Metropolitan City of Milan, Italy"]


kitchen_pic = ["https://images.pexels.com/photos/6255/italian-coffee-vintage-espresso-6255.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1450903/pexels-photo-1450903.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/60040/bread-home-appliances-small-appliances-60040.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"]
garden_pic = ["https://images.pexels.com/photos/589/garden-grass-meadow-green.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/127944/pexels-photo-127944.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/296230/pexels-photo-296230.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"]
construction_pic = ["https://images.pexels.com/photos/34520/confused-muddled-illogical-disoriented.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/1094767/pexels-photo-1094767.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/8663/drill-bits.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/164957/pexels-photo-164957.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"]
painting_pic = ["https://images.pexels.com/photos/6368/art-wall-brush-painting.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/209230/pexels-photo-209230.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"]
other_pic = ["https://images.pexels.com/photos/374074/pexels-photo-374074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/41369/beauty-brunette-cute-equipment-41369.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", "https://images.pexels.com/photos/4614/woman-morning-bathrobe-bathroom.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"]

p "Creating hosts"

host1 = User.new(
   first_name: "Darlene",
   last_name: Faker::Artist.name,
   email: "abc1@gmail.com",
   password: "ABCDEFG",
   address: "Milano, Metropolitan City of Milan, Italy",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host1.save!

host2 = User.new(
   first_name: "Lucy",
   last_name: Faker::Artist.name,
   email: "abc2@gmail.com",
   password: "ABCDEFG",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host2.save!

host3 = User.new(
   first_name: "Nico",
   last_name: Faker::Artist.name,
   email: "abc3@gmail.com",
   password: "ABCDEFG",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host3.save!

host4 = User.new(
   first_name: "Fra",
   last_name: Faker::Artist.name,
   email: "abc4@gmail.com",
   password: "ABCDEFG",
   address: "Milano",
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )

host4.save!

host5 = User.new(
   first_name: "Marco",
   last_name: Faker::Artist.name,
   email: "abc5@gmail.com",
   password: "ABCDEFG",
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
   email: Faker::Internet.email,
   password: "ABCDEFG",
   address: address.sample,
   photo: "https://kitt.lewagon.com/placeholder/users/ssaunier"
   )
user.save!
end

p "Creating items"

20.times do
 item = Item.new(
   title: Faker::Pokemon.move,
   description: Faker::ElectricalComponents.active,
   price: rand(1..200),
   category: category_array[0],
   address: address.sample,
   user: User.all.sample,
   photo: kitchen_pic.sample
   )

 item.save!
end

20.times do
 item = Item.new(
   title: Faker::Pokemon.move,
   description: Faker::ElectricalComponents.active,
   price: rand(1..200),
   category: category_array[1],
   address: address.sample,
   user: User.all.sample,
   photo: garden_pic.sample
   )

 item.save!
end

20.times do
 item = Item.new(
   title: Faker::Pokemon.move,
   description: Faker::ElectricalComponents.active,
   price: rand(1..200),
   category: category_array[2],
   address: address.sample,
   user: User.all.sample,
   photo: construction_pic.sample
   )

 item.save!
end

20.times do
 item = Item.new(
   title: Faker::Pokemon.move,
   description: Faker::ElectricalComponents.active,
   price: rand(1..200),
   category: category_array[3],
   address: address.sample,
   user: User.all.sample,
   photo: painting_pic.sample
   )

 item.save!
end

20.times do
 item = Item.new(
   title: Faker::Pokemon.move,
   description: Faker::ElectricalComponents.active,
   price: rand(1..200),
   category: category_array[4],
   address: address.sample,
   user: User.all.sample,
   photo: other_pic.sample
   )

 item.save!
end


p "items created"

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





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  User.create(
    first_name: Faker::Company.name,
    last_name: Faker::Artist.name ,
    email: "#{Faker::Company.name}@#{Faker::Artist.name}.com" ,
    phone_number: Faker::PhoneNumber.phone_number,
    address: "Milano",
    date_of_birth: Faker::Date.birthday(18, 65),
    )
end



    category_array = w%(kitchen garden house vehicles),

10.times do
  Listing.new(
    title: Faker::Pokemon.move,
    description: Faker::ElectricalComponents.active,
    daily_price: rand(1..200),
    category: category_array.sample
    )
end

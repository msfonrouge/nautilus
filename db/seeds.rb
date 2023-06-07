# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Yacht.destroy_all
puts "Start Users.."

# Faker Users & Yachts
(1..5).each do |i|
  full_name = Faker::Movies::BackToTheFuture.character
  names = full_name.split(" ")
  first_name = names.first
  last_name = names.last

  puts "User.create!(
    first_name: #{first_name},
    last_name: #{last_name},
    email: #{Faker::Internet.email(name: first_name, domain: 'example.com')},
    password: '123456',
    password_confirmation: '123456'
  )
  "

  (1..rand(1..7)).each do
    puts "Yacht.create!(name: #{Faker::TvShows::TheExpanse.ship}, price: #{rand(1000..10000)}, capacity: #{rand(2..20)}, user_id: #{i})
  "
  end
end

User.create!(
  first_name: "Johnny",
  last_name: "English",
  email: "johnny@mi7.com",
  password: "123456",
  password_confirmation: "123456"
)

Yacht.create!(name: "test", price: 5000, capacity: 10, user_id: User.last.id)

User.create!(
  first_name: "Santi",
  last_name: "Lopez Saubidet",
  email: "santi@hotmail.com",
  password: "123456",
  password_confirmation: "123456"
)

Yacht.create!(name: "blabla", price: 2000, capacity: 4, user_id: User.last.id)

User.create!(
  first_name: "Keiber",
  last_name: "Zorrilla",
  email: "kzorrilla@yahoo.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create!(
  first_name: "Charlie",
  last_name: "Rivas",
  email: "crivas@msn.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create!(
  first_name: "Maximo Segundo",
  last_name: "Fonrouge",
  email: "msfonrouge@example.com",
  password: "123456",
  password_confirmation: "123456"
)

puts "Complete."

#50.times {""}

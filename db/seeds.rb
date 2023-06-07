# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Yacht.destroy_all
Booking.destroy_all
puts "Start Users.."

# Faker Users & Yachts
# (1..5).each do |i|
#   full_name = Faker::Movies::BackToTheFuture.character
#   names = full_name.split(" ")
#   first_name = names.first
#   last_name = names.last
#
#   puts "User.create!(
#      first_name: '#{first_name}',
#      last_name: '#{last_name}',
#      email: '#{Faker::Internet.email(name: first_name, domain: "example.com")}',
#      password: '123456',
#      password_confirmation: '123456'
#    )
#    "
#
#   (1..rand(1..7)).each do
#     puts "Yacht.create!(name: '#{Faker::TvShows::TheExpanse.ship}', price: #{rand(1000..10_000)}, capacity: #{rand(2..20)}, user_id: #{i})
#    "
#   end
# end
#
# (1..rand(1..7)).each do
#   puts "Booking.create!(date: '2023-03-04', status: 'good capacity', user_id: #{rand(1..5)} , yacht_id: #{rand(1..20)})"
# end

User.create!(
  first_name: "Lorraine",
  last_name: "Baines",
  email: "lorraine@example.com",
  password: "123456",
  password_confirmation: "123456"
)

Yacht.create!(name: "Lucien", price: 4848, capacity: 14, user_id: 1)

Yacht.create!(name: "Hammurabi", price: 4873, capacity: 10, user_id: 1)

Yacht.create!(name: "Aristophanes", price: 6416, capacity: 13, user_id: 1)

Yacht.create!(name: "Corvette", price: 4598, capacity: 7, user_id: 1)

Yacht.create!(name: "Corvette II", price: 2957, capacity: 3, user_id: 1)

User.create!(
  first_name: "Lou",
  last_name: "Lou",
  email: "lou@example.com",
  password: "123456",
  password_confirmation: "123456"
)

Yacht.create!(name: "Tanaka", price: 2504, capacity: 5, user_id: 2)

Yacht.create!(name: "Lucien", price: 7081, capacity: 18, user_id: 2)

User.create!(
  first_name: "Jennifer",
  last_name: "Parker",
  email: "jennifer@example.com",
  password: "123456",
  password_confirmation: "123456"
)

Yacht.create!(name: "Nephthys", price: 9084, capacity: 13, user_id: 3)

Yacht.create!(name: "S.A. Corey", price: 5875, capacity: 16, user_id: 3)

Yacht.create!(name: "Nephthys II", price: 2041, capacity: 15, user_id: 3)

Yacht.create!(name: "Kittur Chennamma", price: 8099, capacity: 19, user_id: 3)

Yacht.create!(name: "Marasmus", price: 6910, capacity: 16, user_id: 3)

Yacht.create!(name: "Donnager", price: 7917, capacity: 4, user_id: 3)

Yacht.create!(name: "Nauvoo", price: 1487, capacity: 14, user_id: 3)

User.create!(
  first_name: "George",
  last_name: "McFly",
  email: "george@example.com",
  password: "123456",
  password_confirmation: "123456"
)

Yacht.create!(name: "Lucien", price: 3978, capacity: 15, user_id: 4)

Yacht.create!(name: "Anubis", price: 5480, capacity: 7, user_id: 4)

Yacht.create!(name: "Schiaparelli", price: 1695, capacity: 7, user_id: 4)

Yacht.create!(name: "Callisto's Dream", price: 9663, capacity: 13, user_id: 4)

User.create!(
  first_name: "Marty",
  last_name: "McFly",
  email: "marty@example.com",
  password: "123456",
  password_confirmation: "123456"
)

Yacht.create!(name: "Lightbreaker", price: 2054, capacity: 17, user_id: 5)

Yacht.create!(name: "Callisto's Dream II", price: 2073, capacity: 16, user_id: 5)

Yacht.create!(name: "Corvette III", price: 4283, capacity: 19, user_id: 5)

Yacht.create!(name: "Canterbury", price: 5474, capacity: 20, user_id: 5)

Yacht.create!(name: "Rocinante", price: 1925, capacity: 5, user_id: 5)

Yacht.create!(name: "Hammurabi IV", price: 6901, capacity: 4, user_id: 5)

Booking.create!(
  date: "2023-03-04",
  status: "good capacity",
  user_id: rand(1..5),
  yacht_id: rand(1..20)
)

Booking.create!(
  date: "2023-03-04",
  status: "good capacity",
  user_id: rand(1..5),
  yacht_id: rand(1..20)
)

Booking.create!(
  date: "2023-03-04",
  status: "good capacity",
  user_id: rand(1..5),
  yacht_id: rand(1..20)
)

Booking.create!(date: '2023-03-04', status: 'good capacity', user_id: 1 , yacht_id: 19)
Booking.create!(date: '2023-03-04', status: 'good capacity', user_id: 5 , yacht_id: 20)
Booking.create!(date: '2023-03-04', status: 'good capacity', user_id: 3 , yacht_id: 11)
Booking.create!(date: '2023-03-04', status: 'good capacity', user_id: 5 , yacht_id: 14)

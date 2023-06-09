require "open-uri"
## This file should contain all the record creation needed to seed the database with its default values.
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
#   puts "User.new(
#      first_name: '#{first_name}',
#      last_name: '#{last_name}',
#      email: '#{Faker::Internet.email(name: first_name, domain: "example.com")}',
#      password: '123456',
#      password_confirmation: '123456'
#    )
#    "
#
#   (1..rand(1..7)).each do
#     puts "Yacht.new(name: '#{Faker::TvShows::TheExpanse.ship}', price: #{rand(1000..10_000)}, capacity: #{rand(2..20)}, user_id: #{i})
#    "
#   end
# end
#
# (1..rand(1..7)).each do
#   puts "Booking.new(date: '2023-03-04', status: 'good capacity', user_id: #{rand(1..5)} , yacht_id: #{rand(1..20)})"
# end

lorraine = User.new(
  first_name: "Lorraine",
  last_name: "Baines",
  email: "lorraine@example.com",
  password: "123456",
  password_confirmation: "123456"
)
photo_lorraine = URI.open("https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcRS-DjxMVfsM07tqsxhLZTld-F1BaveQHvjtnRX1Rf28flG3pkthMTkiXDjxXZ3i8i2")
lorraine.photo.attach(io: photo_lorraine, filename: "lorraine.png", content_type: "image/png")
lorraine.save!

lucienn = Yacht.new(name: "Lucien II", price: 4848, capacity: 14, user_id: lorraine.id)
photo_lucienn = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKfbMdjQvrs_qN4rOHOQWqXGulXsexFxQ_kN0p5n9yYjP-caRtETMLLmUDMfpMSctlIsg&usqp=CAU")
lucienn.photo.attach(io: photo_lucienn, filename: "lucienn.png", content_type: "image/png")
lucienn.save!

hammurabi = Yacht.new(name: "Hammurabi", price: 4873, capacity: 10, user_id: lorraine.id)
photo_hammurabi = URI.open("https://static.abc.es/media/summum/2019/05/22/yate-monaco-bosque-isla-U30820762373E8F--1200x630@abc.JPG")
hammurabi.photo.attach(io: photo_hammurabi, filename: "hammurabi.png", content_type: "image/png")
hammurabi.save!

aristophanes = Yacht.new(name: "Aristophanes", price: 6416, capacity: 13, user_id: lorraine.id)
photo_aristophanes = URI.open("https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2020/09/avanguardia-yate-lujo-forma-cisne-2058675.jpg")
aristophanes.photo.attach(io: photo_aristophanes, filename: "aristophanes.png", content_type: "image/png")
aristophanes.save!


lou = User.new(
  first_name: "Lou",
  last_name: "Lou",
  email: "lou@example.com",
  password: "123456",
  password_confirmation: "123456"
)
photo_lou = URI.open("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSjAZHVJOKKNYQFf2ooLzm8ciw9MNPVpyLKKoyktsDq5jh9NNnS")
lou.photo.attach(io: photo_lou, filename: "lou.png", content_type: "image/png")
lou.save!

tanaka = Yacht.new(name: "Tanaka", price: 2504, capacity: 5, user_id: lou.id)
photo_tanaka = URI.open("https://s1.eestatic.com/2021/06/18/actualidad/589952595_192183957_1706x960.jpg")
tanaka.photo.attach(io: photo_tanaka, filename: "tanaka.png", content_type: "image/png")
tanaka.save!

lucieniii = Yacht.new(name: "Lucien III", price: 7081, capacity: 18, user_id: lou.id)
photo_lucieniii = URI.open("https://forbes.es/wp-content/uploads/2021/04/streets-monaco.jpg")
lucieniii.photo.attach(io: photo_lucieniii, filename: "lucieniii.png", content_type: "image/png")
lucieniii.save!

jennifer = User.new(
  first_name: "Jennifer",
  last_name: "Parker",
  email: "jennifer@example.com",
  password: "123456",
  password_confirmation: "123456"
)
photo_jennifer = URI.open("https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcTkRKh8InOkMS23gail4vlRaxkQ7HBjGCGb8EmmxACAXm8slamuWgCPR6kFgDWzCZXz")
jennifer.photo.attach(io: photo_jennifer, filename: "jennifer.png", content_type: "image/png")
jennifer.save!

nephthys = Yacht.new(name: "Nephthys", price: 9084, capacity: 13, user_id: jennifer.id)
photo_nephthys = URI.open("https://www.playmarina.com/wp-content/uploads/2022/08/D-elvis-sea-ray-34-renta-de-yates-en-acapulco-05.jpg")
nephthys.photo.attach(io: photo_nephthys, filename: "nephthys.png", content_type: "image/png")
nephthys.save!

marasmus = Yacht.new(name: "Marasmus", price: 6910, capacity: 16, user_id: jennifer.id)
photo_marasmus = URI.open("https://tn.com.ar/resizer/ZneVIgblz_qudF1rjDDS6fSL6tE=/767x0/smart/filters:format(webp)/cloudfront-us-east-1.images.arcpublishing.com/artear/HK7EZUAOIRAI7GIYA2TJ54CKXI.jpg")
marasmus.photo.attach(io: photo_marasmus, filename: "marasmus.png", content_type: "image/png")
marasmus.save!

donnager = Yacht.new(name: "Donnager", price: 7917, capacity: 4, user_id: jennifer.id)
photo_donnager = URI.open("https://conocedores.com/wp-content/uploads/2022/12/yate-expv-exploracio%CC%81n-destino-viajes-lujo-ingenieria-15122022.webp")
donnager.photo.attach(io: photo_donnager, filename: "donnager.png", content_type: "image/png")
donnager.save!

george = User.new(
  first_name: "George",
  last_name: "McFly",
  email: "george@example.com",
  password: "123456",
  password_confirmation: "123456"
)
photo_george = URI.open("https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQwtrs9b_Ti1XosMlgqfYa5hjUTdatXOmYS-VVjwfDyEn5TnD0laZ7YDYOL1Xs2IG8z")
george.photo.attach(io: photo_george, filename: "george.png", content_type: "image/png")
george.save!

lucien = Yacht.new(name: "Lucien", price: 3978, capacity: 15, user_id: george.id)
photo_lucien = URI.open("https://www.caracteristicas.pro/wp-content/uploads/2023/01/yates.jpg")
lucien.photo.attach(io: photo_lucien, filename: "lucien.png", content_type: "image/png")
lucien.save!

anubis = Yacht.new(name: "Anubis", price: 5480, capacity: 7, user_id: george.id)
photo_anubis = URI.open("https://www.caracteristicass.de/wp-content/uploads/2018/08/caracteristicas-de-los-yates.jpg")
anubis.photo.attach(io: photo_anubis, filename: "anubis.png", content_type: "image/png")
anubis.save!

schiaparelli = Yacht.new(name: "Schiaparelli", price: 1695, capacity: 7, user_id: george.id)
photo_schiaparelli = URI.open("https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0b/fa/14/0d.jpg")
schiaparelli.photo.attach(io: photo_schiaparelli, filename: "schiaparelli.png", content_type: "image/png")
schiaparelli.save!

callistos_dream = Yacht.new(name: "Callisto's Dream", price: 9663, capacity: 13, user_id: george.id)
photo_callistos_dream = URI.open("https://www.lavanguardia.com/files/image_449_220/uploads/2021/10/25/617682868f696.jpeg")
callistos_dream.photo.attach(io: photo_callistos_dream, filename: "callistos_dream.png", content_type: "image/png")
callistos_dream.save!

marty = User.new(
  first_name: "Marty",
  last_name: "McFly",
  email: "marty@example.com",
  password: "123456",
  password_confirmation: "123456"
)
photo_marty = URI.open("https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcTarimGhY8duoF3bkWzK4zrVVHXDt2iQWIIhf_NSaQOXsOttZkVtYLRHLENgs3BewDh")
marty.photo.attach(io: photo_marty, filename: "marty.png", content_type: "image/png")
marty.save!

lightbreaker = Yacht.new(name: "Lightbreaker", price: 2054, capacity: 17, user_id: marty.id)
photo_lightbreaker = URI.open("https://megaricos.com/wp-content/uploads/2020/12/shutterstock_1029720961.jpg")
lightbreaker.photo.attach(io: photo_lightbreaker, filename: "lightbreaker.png", content_type: "image/png")
lightbreaker.save!

calli = Yacht.new(name: "Callisto's Dream II", price: 2073, capacity: 16, user_id: marty.id)
photo_calli = URI.open("https://arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/5LR7M5D6GNALLATM45TQLTP5WM.jpg")
calli.photo.attach(io: photo_calli, filename: "calli.png", content_type: "image/png")
calli.save!

corvette = Yacht.new(name: "Corvette III", price: 4283, capacity: 19, user_id: marty.id)
photo_corvette = URI.open("https://arc-anglerfish-arc2-prod-infobae.s3.amazonaws.com/public/5LR7M5D6GNALLATM45TQLTP5WM.jpg")
corvette.photo.attach(io: photo_corvette, filename: "corvette.png", content_type: "image/png")
corvette.save!

Booking.create!(start_date: '2023-03-04',end_date: '2024-07-04', status: 'not-available', user_id: lorraine.id, yacht_id: lucienn.id)
Booking.create!(start_date: '2023-03-04',end_date: '2024-07-04', status: 'not-available', user_id: marty.id, yacht_id: calli.id)
Booking.create!(start_date: '2023-03-04',end_date: '2024-07-04', status: 'not-available', user_id: george.id, yacht_id: anubis.id)
Booking.create!(start_date: '2023-03-04',end_date: '2024-07-04', status: 'not-available', user_id: marty.id, yacht_id: corvette.id)

puts 'finish seeds'

require 'faker'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

################################ FAKER

User.destroy_all
Place.destroy_all
Review.destroy_all
Booking.destroy_all

# array1 = ['https://res.cloudinary.com/deqv0vlpu/image/upload/v1591879057/saif7blf9wgvp24sgplklitgakl7.jpg', 'https://st4.depositphotos.com/1005793/22538/v/1600/depositphotos_225380616-stock-illustration-empty-shop-place-for-the.jpg', 'https://i.pinimg.com/474x/ce/30/c8/ce30c808d295c401c1c10f70bf37dcd3--pop-up-shops-email.jpg', 'https://thumbs.dreamstime.com/z/empty-store-interior-led-lamps-installed-shop-square-shape-ceiling-%C3%AF%C2%BC%C5%93empty-shelves-empty-store-shelves-supermarket-103483433.jpg', 'https://www.miresparis.com/wp-content/uploads/2017/09/C0410-2017-065.jpg', 'https://www.sapeople.com/wp-content/uploads/2020/03/empty-shelves-shop-3.jpg', 'https://headtopics.com/images/2020/3/18/dailymirror/elderly-man-staring-at-empty-shop-shelves-shows-coronavirus-panic-buy-impact-1240379572593590275.webp', 'https://i2-prod.somersetlive.co.uk/news/somerset-news/article202316.ece/ALTERNATES/s1227b/empty-shop-middle-street-1JPG.jpg', 'https://mlvc6feq53ym.i.optimole.com/bT6pLwk-OKkchWZF/w:550/h:413/q:auto/http://bestofbristol.co/wp-content/uploads/2015/12/empty-shop-whiteladies-3.jpg', 'https://www.romania-insider.com/sites/default/files/styles/article_large_image/public/featured_images/The-Empty-Shop.jpg']
# url1 = array.sample
# rand1 = URI.open(url1)
# place.photos.attach(io: rand1, filename: 'seed_image')
# place.save!

# puts "attaching photo !"




# renters

user1 = User.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 'azerty'
  )
user1.save!

puts "saving user 1 !"

user2 = User.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 'azerty'
  )
user2.save!

puts "saving user 2 !"

user3 = User.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 'azerty'
  )
user3.save!

puts "saving user 3 !"

# loyers

user4 = User.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 'azerty'
  )
user4.save!

puts "saving user 4 !"

user5 = User.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 'azerty'
  )
user5.save!

puts "saving user 5 !"

user6 = User.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 'azerty'
  )
user6.save!

puts "saving user 6 !"

# places

place1 = Place.create!(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: '8 Rue Pelletier 69004 Lyon',
    size: rand(50..500),
    renter: user1,
    latitude: 45.777707,
    longitude: 4.828923,
    )

array1 = ['https://images.pexels.com/photos/331990/pexels-photo-331990.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/2079438/pexels-photo-2079438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/1005638/pexels-photo-1005638.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
url1 = array1.sample
rand1 = URI.open(url1)
place1.photos.attach(io: rand1, filename: 'seed_image1')
place1.save!

puts "attaching photo1 !"

  puts "creating place1 !"

  place2 = Place.create!(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: '18 Rue Longue 69001 Lyon',
    size: rand(50..500),
    renter: user2,
    latitude: 45.765315,
    longitude: 4.833824,
    )

  array2 = ['https://images.pexels.com/photos/929245/pexels-photo-929245.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/374894/pexels-photo-374894.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/1070945/pexels-photo-1070945.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
  url2 = array2.sample
  rand2 = URI.open(url2)
  place2.photos.attach(io: rand2, filename: 'seed_image')

  place2.save!

  puts "creating place2 !"

  place3 = Place.create!(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: '71 Rue du Président Édouard Herriot 69002 Lyon',
    size: rand(50..500),
    renter: user3,
    latitude: 45.761079,
    longitude: 4.834167,
    )

  array3 = ['https://images.pexels.com/photos/135620/pexels-photo-135620.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/803908/pexels-photo-803908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/271649/pexels-photo-271649.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
  url3 = array3.sample
  rand3 = URI.open(url3)
  place3.photos.attach(io: rand3, filename: 'seed_image')
  place3.save!

  puts "creating place3 !"

  place4 = Place.create!(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: '2 Rue Louis Carrand 69005 Lyon',
    size: rand(50..500),
    renter: user1,
    latitude: 45.765531,
    longitude: 4.828866,
    )

   array4 = ['https://images.pexels.com/photos/1853951/pexels-photo-1853951.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/1236044/pexels-photo-1236044.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/20943/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
  url4 = array4.sample
  rand4 = URI.open(url4)
  place4.photos.attach(io: rand4, filename: 'seed_image')
  place4.save!

  puts "creating place4 !"

  place5 = Place.create!(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: '5 Rue Rabelais 69003 Lyon',
    size: rand(50..500),
    renter: user2,
    latitude: 45.762503,
    longitude: 4.842854,
    )
     array5 = ['https://images.pexels.com/photos/3831826/pexels-photo-3831826.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/3284980/pexels-photo-3284980.png?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/373488/pexels-photo-373488.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
  url5 = array5.sample
  rand5= URI.open(url5)
  place5.photos.attach(io: rand5, filename: 'seed_image')
  place5.save!

  puts "creating place5 !"

  place6 = Place.create!(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: '6 Rue du Président Carnot 69002 Lyon',
    size: rand(50..500),
    renter: user3,
    latitude: 45.762139,
    longitude: 4.836711,
    )
     array6 = ['https://images.pexels.com/photos/762800/pexels-photo-762800.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/813688/pexels-photo-813688.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      'https://images.pexels.com/photos/928216/pexels-photo-928216.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
  url6 = array6.sample
  rand6 = URI.open(url6)
  place6.photos.attach(io: rand6, filename: 'seed_image')
  place6.save!

  puts "creating place6 !"

  #############IMAGES###########

  #reviews
5.times do
  review1 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user4,
    place: place1
    )
  review1.save!

end

  puts "creating review1"

  5.times do
  review2 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user4,
    place: place2
    )
  review2.save!

end

  puts "creating review2"

  5.times do
  review3 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user4,
    place: place3
    )
  review3.save!

end

  puts "creating review3"

  5.times do
  review4 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user4,
    place: place4
    )
  review4.save!

end

  puts "creating review4"

  5.times do
  review5 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user4,
    place: place5
    )
  review5.save!

end

  puts "creating review5"

  5.times do
  review6 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user4,
    place: place6
    )
  review6.save!

end

  puts "creating review6"

# bookings

booking1 = Booking.new(
    end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    place: place1,
    guest: user2
    )
  booking1.save!

  puts "booking1 create"

booking2 = Booking.new(
    end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    place: place2,
    guest: user2
    )
  booking2.save!

  puts "booking2 create"

booking3 = Booking.new(
    end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    place: place3,
    guest: user2
    )
  booking3.save!

  puts "booking3 create"

booking4 = Booking.new(
    end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    place: place4,
    guest: user2
    )
  booking4.save!

  puts "booking4 create"

booking5 = Booking.new(
    end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    place: place5,
    guest: user2
    )
  booking5.save!

  puts "booking5 create"

booking6 = Booking.new(
    end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    place: place6,
    guest: user2
    )
  booking6.save!

  puts "booking6 create"

# 10.times do

  # user1 = User.new(
  #   name: Faker::Name.name,
  #   email: Faker::Internet.email,
  #   password: Faker::Internet.password
  # )
  # user1.save!

  # puts "saving user 1 !"

  # user2 = User.new(
  #   name: Faker::Name.name,
  #   email: Faker::Internet.free_email,
  #   password: Faker::Internet.password(min_length: 8)
  # )
  # user2.save!

  # puts "saving user 2 !"


  # place = Place.create!(
  #   name: Faker::Address.street_name,
  #   description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
  #   price: rand(100..500),
  #   location: Faker::Address.full_address,
  #   size: rand(50..1000),
  #   renter: user1,
  #   latitude: Faker::Address.latitude,
  #   longitude: Faker::Address.longitude,
  #   )

  # puts "creating place !"

   # url1 = array.sample
   # url2 = array.sample
   # url3 = array.sample
   # rand1 = URI.open(url1)
   # rand2 = URI.open(url2)
   # rand3 = URI.open(url3)

   # place.photos.attach(io: rand1, filename: 'seed_image')
   # place.save!

   # puts "attaching photo !"

   # place.photos.attach(io: rand2, filename: 'seed_image')
   # place.save!

   # puts "attaching photo !"

   # place.photos.attach(io: rand3, filename: 'seed_image')
   # place.save!

   # puts "attaching photo !"



  # booking = Booking.new(
  #   end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
  #   place: place,
  #   guest: user2
  #   )
  # booking.save!

# end


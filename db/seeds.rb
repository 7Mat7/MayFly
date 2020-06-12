require 'faker'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Place.destroy_all
Review.destroy_all
Booking.destroy_all

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
array1.each do |url|
  place1.photos.attach(io: URI.open(url), filename: 'seed_image1')
end
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
  array2.each do |url|
  place2.photos.attach(io: URI.open(url), filename: 'seed_image1')
end
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
  array3.each do |url|
  place3.photos.attach(io: URI.open(url), filename: 'seed_image1')
end
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
  array4.each do |url|
  place4.photos.attach(io: URI.open(url), filename: 'seed_image1')
end
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
     array5 = ['https://images.pexels.com/photos/3831826/pexels-photo-3831826.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/3284980/pexels-photo-3284980.png?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/373488/pexels-photo-373488.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
  array5.each do |url|
  place5.photos.attach(io: URI.open(url), filename: 'seed_image1')
end
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
     array6 = ['https://images.pexels.com/photos/762800/pexels-photo-762800.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/813688/pexels-photo-813688.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'https://images.pexels.com/photos/928216/pexels-photo-928216.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940']
  array6.each do |url|
  place6.photos.attach(io: URI.open(url), filename: 'seed_image1')
end
  place6.save!

  puts "creating place6 !"


  #reviews

  places = [place1, place2, place3, place4, place5, place6]

  places.each do |place|
  review1 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user1,
    place: place
    )
  review1.save!
  puts "creating review1"

  review2 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user2,
    place: place
    )
  review2.save!
  puts "creating review2"

  review3 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user3,
    place: place
    )
  review3.save!
  puts "creating review3"

  review4 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user4,
    place: place
    )
  review4.save!
  puts "creating review4"

  review5 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user5,
    place: place
    )
  review5.save!
  puts "creating review5"

  review6 = Review.new(
    comment: Faker::Lorem.sentence,
    rating: rand(0..5),
    guest: user6,
    place: place
    )
  review6.save!
  puts "creating review6"
end


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



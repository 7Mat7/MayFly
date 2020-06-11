require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

################################ FAKER



User.destroy_all
Place.destroy_all
Review.destroy_all
Booking.destroy_all

image_folder = '/Users/thomas/code/Worthington24/mayfly/app/assets/images/'
images_array = Dir.children(image_folder)

ap images_array

10.times do

  user1 = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  user1.save!

  user2 = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password(min_length: 8)
  )
  user2.save!

  place = Place.new(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: Faker::Address.full_address,
    size: rand(50..1000),
    renter: user1,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    )
  sampled_image = images_array.sample
  p image_folder + sampled_image
  photo = place.photos.attach(io: File.open(image_folder + sampled_image), filename: sampled_image,  )
  p 'coucou'

  sampled_image2 = images_array.sample
  p image_folder + sampled_image
  photo2 = place.photos.attach(io: File.open(image_folder + sampled_image2), filename: sampled_image2,  )
  p 'coucou'

  sampled_image1 = images_array.sample
  p image_folder + sampled_image
  photo1 = place.photos.attach(io: File.open(image_folder + sampled_image1), filename: sampled_image1,  )
  p 'coucou'

  place.save!

  5.times do
    review = Review.new(
    comment: Faker::ChuckNorris.fact,
    rating: rand(0..5),
    guest: user2,
    place: place
    )
  review.save!
  end

  booking = Booking.new(
    end_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    place: place,
    guest: user2
    )
  booking.save!
end

#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Place.destroy_all
# Booking.destroy_all

# user1 = User.new(name: 'Aymeric', email:'A@email.com', password: 'password')
# user2 = User.new(name: 'Jul', email:'J@email.com', password: 'password1')

# user1.save
# user2.save

# local = Place.new(description: "it's my place", price: 2, location: 'Lyon', size: 3)
# local.renter = user1
# local.save

# local2 = Place.new(description: "it's my other place", price: 4, location: 'Paris', size: 10)
# local2.renter = user1
# local2.save

# booking1 = Booking.new(end_date: '2013-02-02 01:00:00 UTC')
# booking1.place = local2
# booking1.guest = user2
# booking1.save!

# review1 = Review.new(comment: "c'était vraiment super", rating: 5)
# review1.guest = user2
# review1.place = local2
# review1.save!

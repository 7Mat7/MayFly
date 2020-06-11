require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

################################ FAKER

User.destroy_all
Place.destroy_all
Review.destroy_all
Booking.destroy_all

image_folder = '/Users/julienlaire/code/julienlaire/MayFly/app/assets/images/'
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

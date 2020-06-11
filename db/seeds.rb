require 'faker'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

################################ FAKER

User.destroy_all
Place.destroy_all
Review.destroy_all
Booking.destroy_all

array = ['https://res.cloudinary.com/deqv0vlpu/image/upload/v1591879057/saif7blf9wgvp24sgplklitgakl7.jpg', 'https://st4.depositphotos.com/1005793/22538/v/1600/depositphotos_225380616-stock-illustration-empty-shop-place-for-the.jpg', 'https://i.pinimg.com/474x/ce/30/c8/ce30c808d295c401c1c10f70bf37dcd3--pop-up-shops-email.jpg', 'https://thumbs.dreamstime.com/z/empty-store-interior-led-lamps-installed-shop-square-shape-ceiling-%C3%AF%C2%BC%C5%93empty-shelves-empty-store-shelves-supermarket-103483433.jpg', 'https://www.miresparis.com/wp-content/uploads/2017/09/C0410-2017-065.jpg', 'https://www.sapeople.com/wp-content/uploads/2020/03/empty-shelves-shop-3.jpg', 'https://headtopics.com/images/2020/3/18/dailymirror/elderly-man-staring-at-empty-shop-shelves-shows-coronavirus-panic-buy-impact-1240379572593590275.webp', 'https://i2-prod.somersetlive.co.uk/news/somerset-news/article202316.ece/ALTERNATES/s1227b/empty-shop-middle-street-1JPG.jpg', 'https://mlvc6feq53ym.i.optimole.com/bT6pLwk-OKkchWZF/w:550/h:413/q:auto/http://bestofbristol.co/wp-content/uploads/2015/12/empty-shop-whiteladies-3.jpg', 'https://www.romania-insider.com/sites/default/files/styles/article_large_image/public/featured_images/The-Empty-Shop.jpg']

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

  place = Place.create!(
    name: Faker::Address.street_name,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    price: rand(100..500),
    location: Faker::Address.full_address,
    size: rand(50..1000),
    renter: user1,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    )

    url1 = array.sample
    url2 = array.sample
    url3 = array.sample
    rand1 = URI.open(url1)
    rand2 = URI.open(url2)
    rand3 = URI.open(url3)

    place.photos.attach(io: rand1, filename: 'seed_image')
    place.save!

    place.photos.attach(io: rand2, filename: 'seed_image')
    place.save!

    place.photos.attach(io: rand3, filename: 'seed_image')
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


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Place.destroy_all
Booking.destroy_all

user1 = User.new(name: 'Aymeric', email:'A@email.com', password: 'password')
user2 = User.new(name: 'Jul', email:'J@email.com', password: 'password1')

user1.save
user2.save

local = Place.new(description: "it's my place", price: 2, location: 'Lyon', size: 3)
local.renter = user1
local.save

local2 = Place.new(description: "it's my other place", price: 4, location: 'Paris', size: 10)
local2.renter = user1
local2.save

booking1 = Booking.new(end_date: '2013-02-02 01:00:00 UTC')
booking1.place = local2
booking1.guest = user2
booking1.save!

review1 = Review.new(comment: "c'était vraiment super", rating: 5)
review1.guest = user2
review1.place = local2
review1.save!

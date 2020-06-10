class Place < ApplicationRecord
  belongs_to :renter, class_name:"User"
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_many_attached :photos
  validates :location, :price, :description, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

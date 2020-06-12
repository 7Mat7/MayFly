class Place < ApplicationRecord
  belongs_to :renter, class_name:"User"
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  include PgSearch::Model
  has_many_attached :photos


  validates :location, :price, :description, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

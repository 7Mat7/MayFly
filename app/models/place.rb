class Place < ApplicationRecord
  belongs_to :renter, class_name:"User"
  has_many :reviews, dependent: :destroy

  validates :location, :price, :description, presence: true
end

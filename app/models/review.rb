class Review < ApplicationRecord
  belongs_to :place
  belongs_to :guest, class_name:"User"

  validates :rating, presence: true, numericality: { only_integer: true }
end

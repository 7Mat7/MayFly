class Booking < ApplicationRecord
  belongs_to :place
  belongs_to :guest, class_name:"User"

  validates :end_date, presence: true
end

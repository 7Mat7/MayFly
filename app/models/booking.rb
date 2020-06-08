class Booking < ApplicationRecord
  belongs_to :place
  belongs_to :guest, class_name:"User"
end

class Place < ApplicationRecord
  belongs_to :renter, class_name:"User"
end

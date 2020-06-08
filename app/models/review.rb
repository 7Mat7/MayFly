class Review < ApplicationRecord
  belongs_to :guest, foreign_key: :user_id
  belongs_to :place
end

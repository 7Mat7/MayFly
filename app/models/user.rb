class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :places, dependent: :destroy, foreign_key: :renter_id
  has_many :bookings, dependent: :destroy, foreign_key: :guest_id
  has_many :reviews, dependent: :destroy, foreign_key: :guest_id

  validates :email, presence: true
end

class User < ApplicationRecord
  has_many :bookings
  has_many :equipments

  validates :email, presence: true, uniqueness: true
  # validates :postal_code, presence: true
  # validates :adress, presence: true
  # validates :phone_number, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :bookings
  has_many :equipments

  validates :email, presence: true, uniqueness: true
  validates :postal_code, presence: true
  validates :adress, presence: true
  validates :phone_number, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

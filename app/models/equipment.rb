class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :sport, presence: true
  validates :clothe, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :size, presence: true
end

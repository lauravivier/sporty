class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings
  
  validates :sport, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :kid_size, presence: true, inclusion: { in: [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18] }
end

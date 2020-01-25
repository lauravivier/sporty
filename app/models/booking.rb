class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  validates :start_date, presence: true
  validates :end_end, presence: true
  validates :address, presence: true
end

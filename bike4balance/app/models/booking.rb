class Booking < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :heights, presence: true
  validates :checkin, presence: true
  validates :checkout, presence: true
end

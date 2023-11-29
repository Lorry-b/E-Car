class Car < ApplicationRecord
  CATEGORIES = ["SUV", "Pick-up", "Sport Car", "Sedan", "Hatchback"]
  belongs_to :user
  has_many :bookings
  validates :location, presence: true
  validates :start_availability, :end_availability, presence: true
  validates :brand, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end

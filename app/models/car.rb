class Car < ApplicationRecord
  CATEGORIES = ["SUV", "Pick-up", "Sport Car", "Sedan", "Hatchback"]
  belongs_to :user
  has_many :bookings
  validates :location, presence: true
  validates :start_availability, :end_availability, presence: true
  validates :brand, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  include PgSearch::Model
  pg_search_scope :search_by_brand_and_category_and_location,
    against: [ :brand, :category, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

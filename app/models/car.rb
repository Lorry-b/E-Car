class Car < ApplicationRecord
  CATEGORIES = ["SUV", "Pick-up", "Sport Car", "Sedan", "Hatchback"]
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :location, presence: true
  validates :start_availability, :end_availability, presence: true
  validates :brand, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  include PgSearch::Model
  pg_search_scope :search_by_brand_and_category,
    against: [ :brand, :category ],
    using: {
      tsearch: { prefix: true }
    }
end

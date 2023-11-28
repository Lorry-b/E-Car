class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :starting_date, :ending_date, presence: true
end

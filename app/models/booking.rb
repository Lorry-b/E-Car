class Booking < ApplicationRecord
  STATUS = ["Accepted", "Rejected", "Pending"]
  belongs_to :car
  belongs_to :user
  validates :starting_date, :ending_date, presence: true
  validates :status, inclusion: { in: STATUS }
end

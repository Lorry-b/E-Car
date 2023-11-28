class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :cars
  has_many :bookings_as_owner, through: :cars, source: :bookings
  validates :first_name, :last_name, :username, :email_address, presence: true
  validates :username, uniqueness: true
  validates :email_address, uniqueness: true
  validates :username, length: { minimum: 4 }
end

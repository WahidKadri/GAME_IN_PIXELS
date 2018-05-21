class Console < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :brand, :model, :description, :address, :price, :number_of_pads, presence: true
end

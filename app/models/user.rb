class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :consoles
  has_many :bookings_on_consoles, through: :consoles, source: :bookings
  has_many :bookings
  has_many :booked_consoles, through: :bookings, source: :console

  # validates :avatar, presence: true
end

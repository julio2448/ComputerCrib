class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_offers, foreign_key: :owner_id, class_name: "Offers"
  has_many :owner_bookings, through: :owned_offers, source: :bookings

  has_many :client_bookings, foreign_key: :client_id, class_name: "Bookings"
  has_many :booked_offers, through: :client_bookings, source: :offers
end

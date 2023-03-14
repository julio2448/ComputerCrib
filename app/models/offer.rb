class Offer < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :bookings
  validates :brand, :model, presence: true
end

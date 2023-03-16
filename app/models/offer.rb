class Offer < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :bookings, dependent: :destroy
  validates :brand, :model, presence: true
  has_one_attached :photo
end

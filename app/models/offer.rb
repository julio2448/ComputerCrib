class Offer < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :bookings, dependent: :destroy
  validates :brand, :model, :rate, presence: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

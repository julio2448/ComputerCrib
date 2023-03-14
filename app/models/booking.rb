class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :users, class_name: "User"
  has_one :owner, through: :offer
  validates :start_date, :end_date, presence: true
end

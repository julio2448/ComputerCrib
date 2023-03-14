class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :client, class_name: "User"
  has_one :owner, through: :offer
end

class AddOfferBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :offer, foreign_key: true
  end
end

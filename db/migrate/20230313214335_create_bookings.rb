class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.float :total_price
      t.string :state

      t.timestamps
    end
  end
end

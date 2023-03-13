class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :brand
      t.string :model
      t.string :disc_space
      t.string :video_card
      t.integer :ram
      t.float :screen_size
      t.integer :usage
      t.integer :rate
      t.integer :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

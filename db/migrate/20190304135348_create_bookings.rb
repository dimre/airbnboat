class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :boat, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.integer :price

      t.timestamps
    end
  end
end

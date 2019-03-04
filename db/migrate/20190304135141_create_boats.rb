class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :address
      t.integer :capacity
      t.string :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end

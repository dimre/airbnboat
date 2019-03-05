class AddCountryToBoat < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :country, :string
  end
end

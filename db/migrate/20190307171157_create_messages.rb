class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :URI
      t.string :Pattern
      t.string :Controller#Action

      t.timestamps
    end
  end
end

class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, :limit => 50
      t.text :address, :limit => 1000
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end

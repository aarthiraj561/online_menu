class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, :limit => 50

      t.timestamps null: false
    end
  end
end

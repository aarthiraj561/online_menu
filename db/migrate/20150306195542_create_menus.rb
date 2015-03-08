class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :item, :limit => 50
      t.string :type_of, :limit => 50
      t.string :day
      t.integer :location_id

      t.timestamps null: false
    end
  end
end

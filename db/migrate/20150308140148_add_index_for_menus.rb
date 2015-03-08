class AddIndexForMenus < ActiveRecord::Migration
  def change
    add_index :menus, :item
  end
end

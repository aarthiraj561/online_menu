class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :author, :limit => 50
      t.text :message
      t.integer :menu_id

      t.timestamps null: false
    end
  end
end

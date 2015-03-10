class AddDefaultTextToFeedbackAuthor < ActiveRecord::Migration
  def change
    change_column :feedbacks, :author, :string, :default => 'Anonymous'
  end
end

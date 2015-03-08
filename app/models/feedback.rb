class Feedback < ActiveRecord::Base
  belongs_to :menu

  scope :get_menu_feedback_list, ->(menu_id) {where(:menu_id => menu_id).order("created_at desc")}
end

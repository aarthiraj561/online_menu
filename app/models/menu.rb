class Menu < ActiveRecord::Base
  belongs_to :location
  has_many :feedback

  self.per_page = 5

  scope :get_day_menu, ->(day) { where(:day => day).select(:item,:id, :type_of) }
  scope :get_menu_items, ->(query_string) { uniq.where("item LIKE ?", "%#{query_string}%").pluck(:item) }

end

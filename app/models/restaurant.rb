class Restaurant < ActiveRecord::Base
  has_many :locations, dependent: :destroy

  # accepts_nested_attributes_for :locations, :allow_destroy => true,:reject_if => :all_blank
end

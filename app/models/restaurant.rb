class Restaurant < ActiveRecord::Base
  has_many :locations, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
  # accepts_nested_attributes_for :locations, :allow_destroy => true,:reject_if => :all_blank
end

class Location < ActiveRecord::Base
  belongs_to :restaurant
  has_many :menus

  validates :name, presence: true
  validates :name, uniqueness: { scope: :restaurant, message: "A branch with such name already exists" }
end

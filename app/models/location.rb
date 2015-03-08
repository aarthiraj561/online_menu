class Location < ActiveRecord::Base
  belongs_to :restaurant
  has_many :menu
end

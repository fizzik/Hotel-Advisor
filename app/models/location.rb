class Location < ActiveRecord::Base
  attr_accessible :city, :country, :hotel_id, :state, :street
  belongs_to :hotel
end

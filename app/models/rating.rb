class Rating < ActiveRecord::Base
  attr_accessible :hotel_id, :user_id, :value
  belongs_to :hotel
  belongs_to :user


end

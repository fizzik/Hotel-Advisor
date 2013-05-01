class Comment < ActiveRecord::Base
  attr_accessible :body, :hotel_id, :user_id

  belongs_to :user
  belongs_to :hotel

end

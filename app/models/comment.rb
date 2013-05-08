class Comment < ActiveRecord::Base
  attr_accessible :body, :hotel_id, :user_id

  validates :body, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true


  belongs_to :user
  belongs_to :hotel

end

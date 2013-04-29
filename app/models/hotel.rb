class Hotel < ActiveRecord::Base
  attr_accessible :breackfast, :price, :room_description, :title, :user_id
  belongs_to :user

  #validates :user_id, presence: true
  validates :title, presence: true, length:  {maximum: 50}

end

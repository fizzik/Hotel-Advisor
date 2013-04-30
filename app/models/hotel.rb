class Hotel < ActiveRecord::Base
  attr_accessible :breackfast, :price, :room_description, :title, :user_id, :image, :remote_image_url, :location_attributes
  belongs_to :user
  mount_uploader :image
  has_one :location


   accepts_nested_attributes_for :location

  validates :title, presence: true, length:  {maximum: 50}

end

class Hotel < ActiveRecord::Base
  attr_accessible :breackfast, :price, :room_description, :title, :user_id, :image, :remote_image_url, :location_attributes
  belongs_to :user
  mount_uploader :image
  has_one :location
  has_many :comment
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users


   accepts_nested_attributes_for :location

  validates :title, presence: true, length:  {maximum: 50}


  def average_rating
    @value = 0
    self.ratings.each do |rating|
        @value = @value + rating.value
    end
    @total = self.ratings.size
    (@value.to_f / @total.to_f).round(1)

end



end

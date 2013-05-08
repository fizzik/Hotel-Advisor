class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :hotels, dependent: :destroy
  has_many :comment, dependent: :destroy
  has_many :ratings
  has_many :rated_hotels, :through => :ratings, :source => :hotels

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  attr_accessible :email, :password, :password_confirmation, :remember_me

end

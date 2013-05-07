class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :hotels, dependent: :destroy
  has_many :comment, dependent: :destroy
  has_many :ratings
  has_many :rated_hotels, :through => :ratings, :source => :hotels

  attr_accessible :email, :password, :password_confirmation, :remember_me

end

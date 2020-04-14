class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # devise default methods
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # must have a username
  validates :username, presence: true

  has_many :posts
  has_many :likes

# uploader for the edit user form, to create profile images
  mount_uploader :image, ImageUploader
end

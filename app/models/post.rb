class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

# before creation sets active state to default value of true
  before_create :set_active, :default_total_likes

# maps relationships
  belongs_to :user
  has_many :likes
  has_many :comments

# checks a user is present
  validates :user_id, :presence => true
# allows only the active posts to be viewed
  scope :active, -> { where active: true }

private

  def set_active
    self.active = true
  end

  # updates the number of total_likes for a post
  def default_total_likes
    self.total_likes = 0
  end

end

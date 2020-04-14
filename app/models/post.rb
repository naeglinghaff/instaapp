class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

# before creation sets active state to default value of true
  before_create :set_active

# maps relationships
  belongs_to :user
  has_many :likes

# checks a user is present
  validates :user_id, :presence => true
# allows only the active posts to be viewed
  scope :active, -> { where active: true }

private

  def set_active
    self.active = true
  end

end

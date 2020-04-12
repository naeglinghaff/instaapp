class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  before_create :set_active
  belongs_to :user

  validates :user_id, :presence => true
# allows only the active posts to be viewed
  scope :active, -> { where active: true }

  def set_active
    self.active = true
  end
end

class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

# so a user can't create multiple likes on one post
  validates_uniqueness_of :post_id, scope: :user_id

  after_create :increase_post_likes

  private

  # updates the like counter on a post
  def increase_post_likes
    Post.find(self.post_id).increment(:total_likes).save
  end
end

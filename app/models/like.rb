class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

# so a user can't create multiple likes on one post
  validates :post_id, uniqueness: { scope: :user_id }

# after creation calls on method to increase the count of a posts' likes
  after_create :increase_post_likes
  after_destroy :decrease_post_likes

  private

  # updates the number of total_likes for a post
  def increase_post_likes
    Post.find(post_id).increment(:total_likes).save
  end

  def decrease_post_likes
    Post.find(post_id).decrement(:total_likes).save
  end
end

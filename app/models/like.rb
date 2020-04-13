class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

# so a user can't create multiple likes on one post
  validates_uniqueness_of :post_id, scope: :user_id
end

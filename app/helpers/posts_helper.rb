module PostsHelper
# method causes n+1 query, for performance try to avoid these

  def liked_by_user? post_id
    Like.where(user_id: current_user.id, post_id: post_id).any?
  end

end

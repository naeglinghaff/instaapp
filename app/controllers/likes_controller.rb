class LikesController < ApplicationController
  # checks user is signed in
  before_action :authenticate_user!
# creates a new like with user and post id
  def save_likes
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    @post_id = params[:post_id]
    like_exists = Like.where(post_id: @post_id, user_id: current_user.id)
      # executes response in js
    respond_to do |format|
      format.js {
        # checks like already exists, returns boolean value
        if like_exists.any?
          like_exists.first.destroy
          @success = false
        elsif @like.save
          @success = true
        else
          @success = false
        end
      # renders the js that updates our like class - making the heart change color
       @post_likes = Post.find(@post_id).total_likes
        render "posts/like"
      }
    end
    end

end

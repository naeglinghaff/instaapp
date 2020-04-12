class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id if user_signed_in?

    if @post.save
      redirect_to dashboard_url, flash: { success: "Post was created" }
    else
      redirect_to :new_post_path, flash: { danger: "New post was not saved" }
    end
  end

  private
  def post_params
    params.require(:post).permit(:image, :image_cache)
  end
end

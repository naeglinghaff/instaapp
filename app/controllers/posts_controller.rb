class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id if user_signed_in?

    if @post.save
      redirect_to posts_url, flash: { success: "Post was created" }
    else
      redirect_to :new_post_path, flash: { danger: "New post was not saved" }
    end
  end

  def index
    @posts = Post.order(:created_at).reverse_order
  end

  private
  def post_params
    params.require(:post).permit(:image, :image_cache, :description)
  end
end

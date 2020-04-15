class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id if user_signed_in?

    if @comment.save
      redirect_to posts_url, flash: { success: "Comment was created" }
    else
      redirect_to posts_url, flash: { danger: "New comment was not saved" }
    end
  end

  def show
    @comments = Comment.order(:created_at).reverse_order
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end
end

class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    #user profile display
    user_id = current_user.id
    @posts = Post.where(user_id: user_id)
  end

  def total_followers
    0
  end

  def total_following
    0
  end
end

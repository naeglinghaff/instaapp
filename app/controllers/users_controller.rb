class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    #user feed dashboards
    user_id = current_user.id
    @posts = Post.where(user_id: user_id)
  end

  def show
    #user profile
  end

end

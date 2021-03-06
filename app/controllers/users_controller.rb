class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def profile
    # show a users profile
    user_id = User.find_by(username: params[:username]).id
    @posts = Post.where(user_id: user_id)
  end

  private

  def set_user
    @user = User.find_by(username: params[:username])
  end
end

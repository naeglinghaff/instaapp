class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    #user feed dashboards
    @posts = Post.active
  end

  def show
    #user profile
  end

end

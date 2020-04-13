class LikesController < ApplicationController
  before_action :authenticate_user!
# creates a new like with user and post id
  def save_likes
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])

      # executes response in json object - allows ajax to avoid page reload
      respond_to do |format|
        format.json {
            if @like.save
              {success: true}
            else
              {success: false}
            end
        }
      end
    end
end

require 'rails_helper'
require_relative '../support/devise'

RSpec.describe LikesController, type: :controller do

  describe 'save likes' do
    login_user
    mock_post

    it 'routes a new like' do
      post :save_likes, params: { post_id: 1 }, format: :js
      expect(response).to have_http_status(200)
    end
  end
end

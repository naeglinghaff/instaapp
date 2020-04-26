require 'rails_helper'
require_relative '../support/devise'

RSpec.describe CommentsController, type: :controller do

  describe 'creates' do
    login_user
    mock_post
    it 'new comment redirects to posts page' do
      post :create, params: { comment: {comment: "this is a comment", post_id: 1 }}
      expect(response).to have_http_status(302)
    end
  end

  describe 'show' do
    login_user
    mock_post
      xit 'shows comments' do
        get :show
        expect(response).to have_http_status(200)
      end
  end
end

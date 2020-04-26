require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe 'new post routes' do
    login_user

    it 'routes a new post' do
      get :new
      expect(response).to have_http_status(200)
    end

    it 'creates a new post' do
      post :new, params: { post: { image: "http:image.com", description: "I am a new post" } }
      expect(response).to have_http_status(200)
    end

    it 'redirects if post is created' do
      post :create, params: { post: { image: "http:image.com", description: "I am a new post" } }
      expect(response).to have_http_status(302)
    end
  end

  describe 'shows posts' do
    login_user
    it 'roots to index' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end

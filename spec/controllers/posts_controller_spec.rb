require 'rails_helper'

RSpec.describe PostsController, type: :controller do
# using warden double to create a logged in user, elsewhere using factorybot
  before(:each) do
    user = double('user')
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe 'new post routes' do
    it 'routes a new post' do
      get :new
      expect(response).to have_http_status(200)
    end

    it 'creates a new post' do
      post :new, params: { post: { image: "http:image.com", description: "I am a new post" } }
      expect(response).to have_http_status(200)
    end
  end

  describe 'shows posts' do
    it 'roots to index' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end

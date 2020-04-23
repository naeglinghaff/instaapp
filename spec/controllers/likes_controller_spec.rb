require 'rails_helper'

RSpec.describe LikesController, type: :controller do

  before(:each) do
    user = double('user')
    allow(request.env['warden']).to receive(:authenticate!).and_return(user)
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe 'save likes' do
    it 'routes a new like' do
      post :save_likes
      expect(response).to have_http_status(200)
    end
  end
end
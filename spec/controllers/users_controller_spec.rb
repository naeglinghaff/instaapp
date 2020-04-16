require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET redirect when not logged in' do
    # needs valid user id to get this route
    it 'responds with 302' do
      get :profile, :user_id => user.id
      expect(response).to have_http_status(302)
    end
  end
end

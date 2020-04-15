require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET /profile when not logged in' do
    it 'responds with 302' do
      get :profile
      expect(response).to have_http_status(302)
    end
  end
end

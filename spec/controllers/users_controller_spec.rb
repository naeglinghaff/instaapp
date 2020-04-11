require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET /dashboard when not logged in' do
    it 'responds with 302' do
      get :index
      expect(response).to have_http_status(302)
    end
  end
end

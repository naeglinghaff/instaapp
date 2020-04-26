require 'rails_helper'
require_relative '../support/devise'

RSpec.describe UsersController, type: :controller do
  describe 'GET profile when logged in' do
    login_user
    # needs valid user id to get this route
    it 'responds with 200' do
      get :profile, params: { username: "countCatula" } 
      expect(response).to have_http_status(200)
    end
  end
end

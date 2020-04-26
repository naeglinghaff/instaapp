module ControllerMacros

    def login_user
      before(:each) do
        @request.env['devise.mapping'] = Devise.mappings[:user]
        user = FactoryBot.create(:user)
        sign_in user
      end
    end

    def mock_post
      before(:each) do
        post = FactoryBot.create(:post)
      end
    end

  end

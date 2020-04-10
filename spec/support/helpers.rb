module Helper

  module SignInHelper
    def sign_up
      visit '/'
      click_link 'Sign up'
      fill_in 'user_email', with: 'ruby@rails.com'
      fill_in 'user_password', with: 'Password'
      fill_in 'user_password_confirmation', with: 'Password'
      click_button 'Sign up'
    end
  end

  module LogInHelper
    def log_in
      visit '/'
      fill_in 'user_email', with: 'ruby@rails.com'
      fill_in 'user_password', with: 'Password'
      click_button 'Log in'
    end
  end

end

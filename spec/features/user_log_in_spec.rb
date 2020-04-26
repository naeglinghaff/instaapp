require 'rails_helper'

RSpec.feature 'Log in', type: :feature do
  scenario 'users can log in to their account' do
    sign_up
    click_link 'Sign out'
    expect(current_path).to eq '/users/sign_in'
    log_in
    expect(current_path).to eq '/'
    expect(page).to have_content("Signed in successfully.")
  end
end

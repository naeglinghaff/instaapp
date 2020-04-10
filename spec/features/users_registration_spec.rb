require 'rails_helper'

RSpec.feature 'Sign up', type: :feature do
  scenario 'users can create an account' do
    sign_up
    expect(current_path).to eq ('/')
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end

  xscenario 'Redirection if not signed in' do
    visit ('/')
    expect(current_path).not_to eq '/'
    expect(current_path).to eq '/users/sign_in'
  end

   scenario 'Sees message if email if not correct format' do
    visit ('/')
    click_link 'Sign up'
    fill_in 'user_email', with: 'ruby'
    fill_in 'user_password', with: 'Password'
    fill_in 'user_password_confirmation', with: 'Password'
    click_button 'Sign up'
    expect(page).to have_content "Email is invalid"
  end

  scenario 'Sees message if password if not correct format' do
    visit ('/')
    click_link 'Sign up'
    fill_in 'user_email', with: 'ruby@rails.com'
    fill_in 'user_password', with: '123'
    fill_in 'user_password_confirmation', with: '123'
    click_button 'Sign up'
    expect(page).to have_content "error prohibited this user from being saved"
  end
end

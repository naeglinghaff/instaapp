class ApplicationController < ActionController::Base
  # user must be signed in
  before_action :authenticate_user!
  # checks for allowed parameters defined in method below
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # sets the allowed params for sign_up and edit user actions
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :image, :description, :image_cache, :website])
  end

end

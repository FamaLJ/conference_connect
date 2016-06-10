class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :avatar_url
    devise_parameter_sanitizer.for(:sign_up) << :company_name
    devise_parameter_sanitizer.for(:sign_up) << :linked_in_url
    devise_parameter_sanitizer.for(:sign_up) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :first_name

    devise_parameter_sanitizer.for(:account_update) << :avatar_url
    devise_parameter_sanitizer.for(:account_update) << :company_name
    devise_parameter_sanitizer.for(:account_update) << :linked_in_url
    devise_parameter_sanitizer.for(:account_update) << :last_name
    devise_parameter_sanitizer.for(:account_update) << :first_name
end

  end

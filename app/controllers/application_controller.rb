class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :first_names, :surname, :start_date, :course_path, :avatar) }
  	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :first_names, :surname, :start_date, :course_path, :avatar) }
  end
end

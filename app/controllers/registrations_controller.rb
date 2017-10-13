class RegistrationsController < Devise::RegistrationsController

	private
# Gets the params that we need to update from the forms and updates them.
# Called the same as the devise one  but done in here and added this ' :controllers => { registrations: 'registrations' }' in routes
# Should be able just to add more if needed and on the form
# I am great!!! 
# YOLO!
# This took ages to figure out but it works. 
	  def sign_up_params
	    params.require(:user).permit(:email, :first_names, :surname, :start_date, :course_path, :bio, :avatar, :password, :password_confirmation, :current_password)
	  end

	  def account_update_params
	    params.require(:user).permit(:email, :first_names, :surname, :start_date, :course_path, :avatar, :bio, :password, :password_confirmation, :current_password)
	  end
	end


class RegistrationsController < Devise::RegistrationsController

	private

	  def sign_up_params
	    params.require(:user).permit(:email, :first_names, :surname, :start_date, :course_path, :avatar, :password, :password_confirmation, :current_password)
	  end

	  def account_update_params
	    params.require(:user).permit(:email, :first_names, :surname, :start_date, :course_path, :avatar, :password, :password_confirmation, :current_password)
	  end
	end


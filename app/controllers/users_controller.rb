class UsersController < ApplicationController

# The index for all the users, only to be displayed when you are an admin
# Achieved by the if statement in navbar; lines 29 & 33; layout/application.html.erb
# Uses the get route
	def index
		@users = User.all
	end

# The show method here is linked to the show page where the spartan can view their own projects
# Uses the get route, so gets the id of the user
  def show
    @user = User.find(params[:id])
  end

# This method uses the delete route
# As there is no private methods or before_action
# We must define what we want to destroy within the method below
# Redirect to "/" is the equivalent of redirect to user_projects_path
  def destroy
  	@user = User.find(params[:id])
  	@user.destroy

  	redirect_to "/"
  end

end

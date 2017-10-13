class UsersController < ApplicationController

# The index for all the users, only to be displayed when you are an admin
# Achieved by the if statement in navbar; lines 29 & 33
	def index
		@users = User.all
	end

# The show method here is linked to the show page where the spartan can view their own projects
  def show
    @user = User.find(params[:id])
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy

  	redirect_to "/"
  end

end

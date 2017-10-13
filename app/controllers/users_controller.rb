class UsersController < ApplicationController

# The show method here is linked to the show page where the spartan can view their own projects
  def show
    @user = User.find(current_user.id)
  end


end

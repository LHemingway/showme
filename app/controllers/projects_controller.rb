class ProjectsController < ApplicationController
  before_action :set_projects
  before_action :set_project, only: [:show, :edit, :update, :destroy]


# if user is signed in it will display the current user or user is nil and it will just display projects

  def index
    if user_signed_in?
      @user = current_user
    else
      @user = nil
    end
    @projects = Project.all
  end

  # Find user params and find user projects
  # GET users/1/projects
  def index_user
    @user = User.find(params[:id])
    @projects = @user.projects
  end

  #find user details and show projects for this user
  # GET users/1/projects/1
  def show
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
  end

  # Create new project and bring form up for the new project
  # GET users/1/projects/new
  def new
    @project = Project.new
  end

  # Create the new projects using the details from the populated form
  # POST users/1/projects
  def create
    @project = @user.projects.create(project_params)

    # Save and redirect to user projects with a notice at the top saying that the project has been created

    if @project.save
      redirect_to(user_projects_path(@project), notice: 'Project was successfully created.')
    else
      render action: 'new'
    end
  end

# Brings up the form for the edit with the data pre populated as it is in the specific id of the project
# GET users/1/projects/1/edit
# The if statements allow the owner of the project to edit, and if it does not meet the method criteria
# the user can not edit the project and is redirected to the homepage
  def edit
    project_owner = current_user.projects.exists?(params[:id])
    if project_owner
      @project = current_user.projects.find(params[:id])
    else
      redirect_to root_path
    end
  end
  
  # update using the project params in the populated form
  # PUT users/1/projects/1
  def update
    if @project.update_attributes(project_params)
      #redirect to home with the notice that project has been successfully updated
      redirect_to project_params, notice: 'Project was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # This deletes the project with the id that has been specified by clicking on the project
  # DELETE users/1/projects/1
  def destroy
    @project.destroy

    redirect_to user_projects_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects
      if user_signed_in?
        @user = User.find(current_user.id)
      end
    end

    def set_project
      @project = Project.find(params[:id])
      @user = @project.users.first
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:screenshot, :description, :technologies, :url, :public_private)
    end
end

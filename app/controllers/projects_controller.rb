class ProjectsController < ApplicationController
  before_action :set_projects
  before_action :set_project, only: [:show, :edit, :update, :destroy]


  def index
    if user_signed_in?
      @user = current_user
    else
      @user = nil
    end
    @projects = Project.all
  end

  # GET users/1/projects
  def index_user
    @user = User.find(params[:id])
    @projects = @user.projects
  end

  # GET users/1/projects/1
  def show
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
  end

  # GET users/1/projects/new
  def new
    @project = Project.new
  end

  

  # POST users/1/projects
  def create
    @project = @user.projects.create(project_params)

    if @project.save
      redirect_to(user_projects_path(@project), notice: 'Project was successfully created.')
    else
      render action: 'new'
    end
  end

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
  
  # PUT users/1/projects/1
  def update
    if @project.update_attributes(project_params)
      redirect_to "/", notice: 'Project was successfully updated.'
    else
      render action: 'edit'
    end
  end

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

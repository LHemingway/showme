class ProjectsController < ApplicationController
  before_action :set_projects
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  # GET users/1/projects
  def index_user
    @projects = @user.projects
  end

  # GET users/1/projects/1
  def show
  end

  # GET users/1/projects/new
  def new
    @project = @user.projects.build
  end

  # GET users/1/projects/1/edit
  def edit
  end

  # POST users/1/projects
  def create
    @project = @user.projects.build(project_params)

    if @project.save
      redirect_to([@project.user, @project], notice: 'Project was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/projects/1
  def update
    if @project.update_attributes(project_params)
      redirect_to([@project.user, @project], notice: 'Project was successfully updated.')
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
      if user_signed_in?
        @project = @user.projects.find(params[:id])
      else
        @project = projects.find(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:screenshot, :description, :technologies, :url, :public_private)
    end
end

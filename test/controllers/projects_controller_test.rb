require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @project = projects(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, params: { user_id: @user, project: @project.attributes }
    end

    assert_redirected_to user_project_path(@user, Project.last)
  end

  test "should show project" do
    get :show, params: { user_id: @user, id: @project }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @project }
    assert_response :success
  end

  test "should update project" do
    put :update, params: { user_id: @user, id: @project, project: @project.attributes }
    assert_redirected_to user_project_path(@user, Project.last)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, params: { user_id: @user, id: @project }
    end

    assert_redirected_to user_projects_path(@user)
  end
end

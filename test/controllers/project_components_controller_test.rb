require 'test_helper'

class ProjectComponentsControllerTest < ActionController::TestCase
  setup do
    @project_component = project_components(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_components)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_component" do
    assert_difference('ProjectComponent.count') do
      post :create, project_component: { project_id: @project_component.project_id }
    end

    assert_redirected_to project_component_path(assigns(:project_component))
  end

  test "should show project_component" do
    get :show, id: @project_component
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_component
    assert_response :success
  end

  test "should update project_component" do
    patch :update, id: @project_component, project_component: { project_id: @project_component.project_id }
    assert_redirected_to project_component_path(assigns(:project_component))
  end

  test "should destroy project_component" do
    assert_difference('ProjectComponent.count', -1) do
      delete :destroy, id: @project_component
    end

    assert_redirected_to project_components_path
  end
end

require 'test_helper'

class GroupComponentsControllerTest < ActionController::TestCase
  setup do
    @group_component = group_components(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_components)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_component" do
    assert_difference('GroupComponent.count') do
      post :create, group_component: { description: @group_component.description, enable: @group_component.enable, name: @group_component.name, user_id: @group_component.user_id }
    end

    assert_redirected_to group_component_path(assigns(:group_component))
  end

  test "should show group_component" do
    get :show, id: @group_component
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_component
    assert_response :success
  end

  test "should update group_component" do
    patch :update, id: @group_component, group_component: { description: @group_component.description, enable: @group_component.enable, name: @group_component.name, user_id: @group_component.user_id }
    assert_redirected_to group_component_path(assigns(:group_component))
  end

  test "should destroy group_component" do
    assert_difference('GroupComponent.count', -1) do
      delete :destroy, id: @group_component
    end

    assert_redirected_to group_components_path
  end
end

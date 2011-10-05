require 'test_helper'

class BoilerRoomsControllerTest < ActionController::TestCase
  setup do
    @boiler_room = boiler_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boiler_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boiler_room" do
    assert_difference('BoilerRoom.count') do
      post :create, :boiler_room => @boiler_room.attributes
    end

    assert_redirected_to boiler_room_path(assigns(:boiler_room))
  end

  test "should show boiler_room" do
    get :show, :id => @boiler_room.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @boiler_room.to_param
    assert_response :success
  end

  test "should update boiler_room" do
    put :update, :id => @boiler_room.to_param, :boiler_room => @boiler_room.attributes
    assert_redirected_to boiler_room_path(assigns(:boiler_room))
  end

  test "should destroy boiler_room" do
    assert_difference('BoilerRoom.count', -1) do
      delete :destroy, :id => @boiler_room.to_param
    end

    assert_redirected_to boiler_rooms_path
  end
end

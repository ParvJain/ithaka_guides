require 'test_helper'

class PlaceActivitiesControllerTest < ActionController::TestCase
  setup do
    @place_activity = place_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_activities)
  end

  test "should create place_activity" do
    assert_difference('PlaceActivity.count') do
      post :create, place_activity: {  }
    end

    assert_response 201
  end

  test "should show place_activity" do
    get :show, id: @place_activity
    assert_response :success
  end

  test "should update place_activity" do
    put :update, id: @place_activity, place_activity: {  }
    assert_response 204
  end

  test "should destroy place_activity" do
    assert_difference('PlaceActivity.count', -1) do
      delete :destroy, id: @place_activity
    end

    assert_response 204
  end
end

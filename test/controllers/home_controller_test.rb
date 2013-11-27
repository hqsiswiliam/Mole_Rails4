require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

  test "should get organisations" do
    get :organisations
    assert_response :success
  end

  test "should get what_is_here" do
    get :what_is_here
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end

require "test_helper"

class FriendappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendapp = friendapps(:one)
  end

  test "should get index" do
    get friendapps_url
    assert_response :success
  end

  test "should get new" do
    get new_friendapp_url
    assert_response :success
  end

  test "should create friendapp" do
    assert_difference("Friendapp.count") do
      post friendapps_url, params: { friendapp: { email: @friendapp.email, first_name: @friendapp.first_name, last_name: @friendapp.last_name, phone: @friendapp.phone, twitter: @friendapp.twitter } }
    end

    assert_redirected_to friendapp_url(Friendapp.last)
  end

  test "should show friendapp" do
    get friendapp_url(@friendapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendapp_url(@friendapp)
    assert_response :success
  end

  test "should update friendapp" do
    patch friendapp_url(@friendapp), params: { friendapp: { email: @friendapp.email, first_name: @friendapp.first_name, last_name: @friendapp.last_name, phone: @friendapp.phone, twitter: @friendapp.twitter } }
    assert_redirected_to friendapp_url(@friendapp)
  end

  test "should destroy friendapp" do
    assert_difference("Friendapp.count", -1) do
      delete friendapp_url(@friendapp)
    end

    assert_redirected_to friendapps_url
  end
end

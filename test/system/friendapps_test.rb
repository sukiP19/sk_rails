require "application_system_test_case"

class FriendappsTest < ApplicationSystemTestCase
  setup do
    @friendapp = friendapps(:one)
  end

  test "visiting the index" do
    visit friendapps_url
    assert_selector "h1", text: "Friendapps"
  end

  test "should create friendapp" do
    visit friendapps_url
    click_on "New friendapp"

    fill_in "Email", with: @friendapp.email
    fill_in "First name", with: @friendapp.first_name
    fill_in "Last name", with: @friendapp.last_name
    fill_in "Phone", with: @friendapp.phone
    fill_in "Twitter", with: @friendapp.twitter
    click_on "Create Friendapp"

    assert_text "Friendapp was successfully created"
    click_on "Back"
  end

  test "should update Friendapp" do
    visit friendapp_url(@friendapp)
    click_on "Edit this friendapp", match: :first

    fill_in "Email", with: @friendapp.email
    fill_in "First name", with: @friendapp.first_name
    fill_in "Last name", with: @friendapp.last_name
    fill_in "Phone", with: @friendapp.phone
    fill_in "Twitter", with: @friendapp.twitter
    click_on "Update Friendapp"

    assert_text "Friendapp was successfully updated"
    click_on "Back"
  end

  test "should destroy Friendapp" do
    visit friendapp_url(@friendapp)
    click_on "Destroy this friendapp", match: :first

    assert_text "Friendapp was successfully destroyed"
  end
end

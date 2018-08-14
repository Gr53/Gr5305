require "application_system_test_case"

class HeadquartersTest < ApplicationSystemTestCase
  setup do
    @headquarter = headquarters(:one)
  end

  test "visiting the index" do
    visit headquarters_url
    assert_selector "h1", text: "Headquarters"
  end

  test "creating a Headquarters" do
    visit headquarters_url
    click_on "New Headquarters"

    fill_in "Address", with: @headquarter.ADDRESS
    fill_in "Id", with: @headquarter.ID
    fill_in "Location", with: @headquarter.LOCATION
    fill_in "Location Map", with: @headquarter.LOCATION_MAP
    fill_in "Name", with: @headquarter.NAME
    click_on "Create Headquarters"

    assert_text "Headquarters was successfully created"
    click_on "Back"
  end

  test "updating a Headquarters" do
    visit headquarters_url
    click_on "Edit", match: :first

    fill_in "Address", with: @headquarter.ADDRESS
    fill_in "Id", with: @headquarter.ID
    fill_in "Location", with: @headquarter.LOCATION
    fill_in "Location Map", with: @headquarter.LOCATION_MAP
    fill_in "Name", with: @headquarter.NAME
    click_on "Update Headquarters"

    assert_text "Headquarters was successfully updated"
    click_on "Back"
  end

  test "destroying a Headquarters" do
    visit headquarters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Headquarters was successfully destroyed"
  end
end

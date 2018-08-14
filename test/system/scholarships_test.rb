require "application_system_test_case"

class ScholarshipsTest < ApplicationSystemTestCase
  setup do
    @scholarship = scholarships(:one)
  end

  test "visiting the index" do
    visit scholarships_url
    assert_selector "h1", text: "Scholarships"
  end

  test "creating a Scholarship" do
    visit scholarships_url
    click_on "New Scholarship"

    fill_in "Date Limit", with: @scholarship.DATE_LIMIT
    fill_in "Id", with: @scholarship.ID
    fill_in "Info Additional", with: @scholarship.INFO_ADDITIONAL
    fill_in "Requirements", with: @scholarship.REQUIREMENTS
    fill_in "Vacancies", with: @scholarship.VACANCIES
    click_on "Create Scholarship"

    assert_text "Scholarship was successfully created"
    click_on "Back"
  end

  test "updating a Scholarship" do
    visit scholarships_url
    click_on "Edit", match: :first

    fill_in "Date Limit", with: @scholarship.DATE_LIMIT
    fill_in "Id", with: @scholarship.ID
    fill_in "Info Additional", with: @scholarship.INFO_ADDITIONAL
    fill_in "Requirements", with: @scholarship.REQUIREMENTS
    fill_in "Vacancies", with: @scholarship.VACANCIES
    click_on "Update Scholarship"

    assert_text "Scholarship was successfully updated"
    click_on "Back"
  end

  test "destroying a Scholarship" do
    visit scholarships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scholarship was successfully destroyed"
  end
end

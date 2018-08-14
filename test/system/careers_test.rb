require "application_system_test_case"

class CareersTest < ApplicationSystemTestCase
  setup do
    @career = careers(:one)
  end

  test "visiting the index" do
    visit careers_url
    assert_selector "h1", text: "Careers"
  end

  test "creating a Career" do
    visit careers_url
    click_on "New Career"

    fill_in "Area Knowledge", with: @career.AREA_KNOWLEDGE
    fill_in "Duration", with: @career.DURATION
    fill_in "Id", with: @career.ID
    fill_in "Info Additional", with: @career.INFO_ADDITIONAL
    fill_in "Level Education", with: @career.LEVEL_EDUCATION
    fill_in "Modality", with: @career.MODALITY
    fill_in "Num Credits", with: @career.NUM_CREDITS
    fill_in "Qualified Registration", with: @career.QUALIFIED_REGISTRATION
    fill_in "Title", with: @career.TITLE
    fill_in "Value Curriculum", with: @career.VALUE_CURRICULUM
    fill_in "Value Semester", with: @career.VALUE_SEMESTER
    fill_in "Working Day", with: @career.WORKING_DAY
    click_on "Create Career"

    assert_text "Career was successfully created"
    click_on "Back"
  end

  test "updating a Career" do
    visit careers_url
    click_on "Edit", match: :first

    fill_in "Area Knowledge", with: @career.AREA_KNOWLEDGE
    fill_in "Duration", with: @career.DURATION
    fill_in "Id", with: @career.ID
    fill_in "Info Additional", with: @career.INFO_ADDITIONAL
    fill_in "Level Education", with: @career.LEVEL_EDUCATION
    fill_in "Modality", with: @career.MODALITY
    fill_in "Num Credits", with: @career.NUM_CREDITS
    fill_in "Qualified Registration", with: @career.QUALIFIED_REGISTRATION
    fill_in "Title", with: @career.TITLE
    fill_in "Value Curriculum", with: @career.VALUE_CURRICULUM
    fill_in "Value Semester", with: @career.VALUE_SEMESTER
    fill_in "Working Day", with: @career.WORKING_DAY
    click_on "Update Career"

    assert_text "Career was successfully updated"
    click_on "Back"
  end

  test "destroying a Career" do
    visit careers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Career was successfully destroyed"
  end
end

require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "creating a Course" do
    visit courses_url
    click_on "New Course"

    fill_in "Date End", with: @course.DATE_END
    fill_in "Date Start", with: @course.DATE_START
    fill_in "Duration", with: @course.DURATION
    fill_in "Id", with: @course.ID
    fill_in "Info Additional", with: @course.INFO_ADDITIONAL
    fill_in "Investment", with: @course.INVESTMENT
    fill_in "Name", with: @course.NAME
    fill_in "Place", with: @course.PLACE
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "updating a Course" do
    visit courses_url
    click_on "Edit", match: :first

    fill_in "Date End", with: @course.DATE_END
    fill_in "Date Start", with: @course.DATE_START
    fill_in "Duration", with: @course.DURATION
    fill_in "Id", with: @course.ID
    fill_in "Info Additional", with: @course.INFO_ADDITIONAL
    fill_in "Investment", with: @course.INVESTMENT
    fill_in "Name", with: @course.NAME
    fill_in "Place", with: @course.PLACE
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "destroying a Course" do
    visit courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end

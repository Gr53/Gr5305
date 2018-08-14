require 'test_helper'

class ScholarshiPsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scholarship = scholarships(:one)
  end

  test "should get index" do
    get scholarships_url
    assert_response :success
  end

  test "should get new" do
    get new_scholarship_url
    assert_response :success
  end

  test "should create scholarship" do
    assert_difference('Scholarship.count') do
      post scholarships_url, params: { scholarship: { DATE_LIMIT: @scholarship.DATE_LIMIT, ID: @scholarship.ID, INFO_ADDITIONAL: @scholarship.INFO_ADDITIONAL, REQUIREMENTS: @scholarship.REQUIREMENTS, VACANCIES: @scholarship.VACANCIES } }
    end

    assert_redirected_to scholarship_url(Scholarship.last)
  end

  test "should show scholarship" do
    get scholarship_url(@scholarship)
    assert_response :success
  end

  test "should get edit" do
    get edit_scholarship_url(@scholarship)
    assert_response :success
  end

  test "should update scholarship" do
    patch scholarship_url(@scholarship), params: { scholarship: { DATE_LIMIT: @scholarship.DATE_LIMIT, ID: @scholarship.ID, INFO_ADDITIONAL: @scholarship.INFO_ADDITIONAL, REQUIREMENTS: @scholarship.REQUIREMENTS, VACANCIES: @scholarship.VACANCIES } }
    assert_redirected_to scholarship_url(@scholarship)
  end

  test "should destroy scholarship" do
    assert_difference('Scholarship.count', -1) do
      delete scholarship_url(@scholarship)
    end

    assert_redirected_to scholarships_url
  end
end

require 'test_helper'

class AdmissioNsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admission = admissions(:one)
  end

  test "should get index" do
    get admissions_url
    assert_response :success
  end

  test "should get new" do
    get new_admission_url
    assert_response :success
  end

  test "should create admission" do
    assert_difference('Admission.count') do
      post admissions_url, params: { admission: { DATE_LIMIT: @admission.DATE_LIMIT, ID: @admission.ID, INFO_ADDITIONAL: @admission.INFO_ADDITIONAL, PERIOD_INSCRIPTION: @admission.PERIOD_INSCRIPTION, REQUIREMENTS: @admission.REQUIREMENTS, VACANCIES: @admission.VACANCIES, VALUE_INSCRIPTION: @admission.VALUE_INSCRIPTION } }
    end

    assert_redirected_to admission_url(Admission.last)
  end

  test "should show admission" do
    get admission_url(@admission)
    assert_response :success
  end

  test "should get edit" do
    get edit_admission_url(@admission)
    assert_response :success
  end

  test "should update admission" do
    patch admission_url(@admission), params: { admission: { DATE_LIMIT: @admission.DATE_LIMIT, ID: @admission.ID, INFO_ADDITIONAL: @admission.INFO_ADDITIONAL, PERIOD_INSCRIPTION: @admission.PERIOD_INSCRIPTION, REQUIREMENTS: @admission.REQUIREMENTS, VACANCIES: @admission.VACANCIES, VALUE_INSCRIPTION: @admission.VALUE_INSCRIPTION } }
    assert_redirected_to admission_url(@admission)
  end

  test "should destroy admission" do
    assert_difference('Admission.count', -1) do
      delete admission_url(@admission)
    end

    assert_redirected_to admissions_url
  end
end

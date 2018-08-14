require 'test_helper'

class CareeRsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @career = careers(:one)
  end

  test "should get index" do
    get careers_url
    assert_response :success
  end

  test "should get new" do
    get new_career_url
    assert_response :success
  end

  test "should create career" do
    assert_difference('Career.count') do
      post careers_url, params: { career: { AREA_KNOWLEDGE: @career.AREA_KNOWLEDGE, DURATION: @career.DURATION, ID: @career.ID, INFO_ADDITIONAL: @career.INFO_ADDITIONAL, LEVEL_EDUCATION: @career.LEVEL_EDUCATION, MODALITY: @career.MODALITY, NUM_CREDITS: @career.NUM_CREDITS, QUALIFIED_REGISTRATION: @career.QUALIFIED_REGISTRATION, TITLE: @career.TITLE, VALUE_CURRICULUM: @career.VALUE_CURRICULUM, VALUE_SEMESTER: @career.VALUE_SEMESTER, WORKING_DAY: @career.WORKING_DAY } }
    end

    assert_redirected_to career_url(Career.last)
  end

  test "should show career" do
    get career_url(@career)
    assert_response :success
  end

  test "should get edit" do
    get edit_career_url(@career)
    assert_response :success
  end

  test "should update career" do
    patch career_url(@career), params: { career: { AREA_KNOWLEDGE: @career.AREA_KNOWLEDGE, DURATION: @career.DURATION, ID: @career.ID, INFO_ADDITIONAL: @career.INFO_ADDITIONAL, LEVEL_EDUCATION: @career.LEVEL_EDUCATION, MODALITY: @career.MODALITY, NUM_CREDITS: @career.NUM_CREDITS, QUALIFIED_REGISTRATION: @career.QUALIFIED_REGISTRATION, TITLE: @career.TITLE, VALUE_CURRICULUM: @career.VALUE_CURRICULUM, VALUE_SEMESTER: @career.VALUE_SEMESTER, WORKING_DAY: @career.WORKING_DAY } }
    assert_redirected_to career_url(@career)
  end

  test "should destroy career" do
    assert_difference('Career.count', -1) do
      delete career_url(@career)
    end

    assert_redirected_to careers_url
  end
end

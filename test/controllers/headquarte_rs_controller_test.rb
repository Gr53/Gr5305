require 'test_helper'

class HeadquarteRsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headquarter = headquarters(:one)
  end

  test "should get index" do
    get headquarters_index_url
    assert_response :success
  end

  test "should get new" do
    get new_headquarter_url
    assert_response :success
  end

  test "should create headquarter" do
    assert_difference('Headquarters.count') do
      post headquarters_index_url, params: { headquarter: { ADDRESS: @headquarter.ADDRESS, ID: @headquarter.ID, LOCATION: @headquarter.LOCATION, LOCATION_MAP: @headquarter.LOCATION_MAP, NAME: @headquarter.NAME } }
    end

    assert_redirected_to headquarter_url(Headquarters.last)
  end

  test "should show headquarter" do
    get headquarter_url(@headquarter)
    assert_response :success
  end

  test "should get edit" do
    get edit_headquarter_url(@headquarter)
    assert_response :success
  end

  test "should update headquarter" do
    patch headquarter_url(@headquarter), params: { headquarter: { ADDRESS: @headquarter.ADDRESS, ID: @headquarter.ID, LOCATION: @headquarter.LOCATION, LOCATION_MAP: @headquarter.LOCATION_MAP, NAME: @headquarter.NAME } }
    assert_redirected_to headquarter_url(@headquarter)
  end

  test "should destroy headquarter" do
    assert_difference('Headquarters.count', -1) do
      delete headquarter_url(@headquarter)
    end

    assert_redirected_to headquarters_index_url
  end
end

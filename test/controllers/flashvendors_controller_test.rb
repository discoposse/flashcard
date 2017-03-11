require 'test_helper'

class FlashvendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flashvendor = flashvendors(:one)
  end

  test "should get index" do
    get flashvendors_url
    assert_response :success
  end

  test "should get new" do
    get new_flashvendor_url
    assert_response :success
  end

  test "should create flashvendor" do
    assert_difference('Flashvendor.count') do
      post flashvendors_url, params: { flashvendor: { vendor_description: @flashvendor.vendor_description, vendor_name: @flashvendor.vendor_name, vendor_url: @flashvendor.vendor_url } }
    end

    assert_redirected_to flashvendor_url(Flashvendor.last)
  end

  test "should show flashvendor" do
    get flashvendor_url(@flashvendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_flashvendor_url(@flashvendor)
    assert_response :success
  end

  test "should update flashvendor" do
    patch flashvendor_url(@flashvendor), params: { flashvendor: { vendor_description: @flashvendor.vendor_description, vendor_name: @flashvendor.vendor_name, vendor_url: @flashvendor.vendor_url } }
    assert_redirected_to flashvendor_url(@flashvendor)
  end

  test "should destroy flashvendor" do
    assert_difference('Flashvendor.count', -1) do
      delete flashvendor_url(@flashvendor)
    end

    assert_redirected_to flashvendors_url
  end
end

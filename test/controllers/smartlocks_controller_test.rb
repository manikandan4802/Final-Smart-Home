require 'test_helper'

class SmartlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smartlock = smartlocks(:one)
  end

  test "should get index" do
    get smartlocks_url
    assert_response :success
  end

  test "should get new" do
    get new_smartlock_url
    assert_response :success
  end

  test "should create smartlock" do
    assert_difference('Smartlock.count') do
      post smartlocks_url, params: { smartlock: { company_id: @smartlock.company_id, property_id: @smartlock.property_id, serial_num: @smartlock.serial_num } }
    end

    assert_redirected_to smartlock_url(Smartlock.last)
  end

  test "should show smartlock" do
    get smartlock_url(@smartlock)
    assert_response :success
  end

  test "should get edit" do
    get edit_smartlock_url(@smartlock)
    assert_response :success
  end

  test "should update smartlock" do
    patch smartlock_url(@smartlock), params: { smartlock: { company_id: @smartlock.company_id, property_id: @smartlock.property_id, serial_num: @smartlock.serial_num } }
    assert_redirected_to smartlock_url(@smartlock)
  end

  test "should destroy smartlock" do
    assert_difference('Smartlock.count', -1) do
      delete smartlock_url(@smartlock)
    end

    assert_redirected_to smartlocks_url
  end
end

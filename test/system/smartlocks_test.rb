require "application_system_test_case"

class SmartlocksTest < ApplicationSystemTestCase
  setup do
    @smartlock = smartlocks(:one)
  end

  test "visiting the index" do
    visit smartlocks_url
    assert_selector "h1", text: "Smartlocks"
  end

  test "creating a Smartlock" do
    visit smartlocks_url
    click_on "New Smartlock"

    fill_in "Company", with: @smartlock.company_id
    fill_in "Property", with: @smartlock.property_id
    fill_in "Serial num", with: @smartlock.serial_num
    click_on "Create Smartlock"

    assert_text "Smartlock was successfully created"
    click_on "Back"
  end

  test "updating a Smartlock" do
    visit smartlocks_url
    click_on "Edit", match: :first

    fill_in "Company", with: @smartlock.company_id
    fill_in "Property", with: @smartlock.property_id
    fill_in "Serial num", with: @smartlock.serial_num
    click_on "Update Smartlock"

    assert_text "Smartlock was successfully updated"
    click_on "Back"
  end

  test "destroying a Smartlock" do
    visit smartlocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Smartlock was successfully destroyed"
  end
end

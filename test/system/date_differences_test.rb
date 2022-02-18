require "application_system_test_case"

class DateDifferencesTest < ApplicationSystemTestCase
  setup do
    @date_difference = date_differences(:one)
  end

  test "visiting the index" do
    visit date_differences_url
    assert_selector "h1", text: "Date differences"
  end

  test "should create date difference" do
    visit date_differences_url
    click_on "New date difference"

    fill_in "Date1", with: @date_difference.date1
    fill_in "Date2", with: @date_difference.date2
    fill_in "Diff", with: @date_difference.diff
    click_on "Create Date difference"

    assert_text "Date difference was successfully created"
    click_on "Back"
  end

  test "should update Date difference" do
    visit date_difference_url(@date_difference)
    click_on "Edit this date difference", match: :first

    fill_in "Date1", with: @date_difference.date1
    fill_in "Date2", with: @date_difference.date2
    fill_in "Diff", with: @date_difference.diff
    click_on "Update Date difference"

    assert_text "Date difference was successfully updated"
    click_on "Back"
  end

  test "should destroy Date difference" do
    visit date_difference_url(@date_difference)
    click_on "Destroy this date difference", match: :first

    assert_text "Date difference was successfully destroyed"
  end
end

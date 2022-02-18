require "test_helper"

class DateDifferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_difference = date_differences(:one)
  end

  test "should get index" do
    get date_differences_url
    assert_response :success
  end

  test "should get new" do
    get new_date_difference_url
    assert_response :success
  end

  test "should create date_difference" do
    assert_difference("DateDifference.count") do
      post date_differences_url, params: { date_difference: { date1: @date_difference.date1, date2: @date_difference.date2, diff: @date_difference.diff } }
    end

    assert_redirected_to date_difference_url(DateDifference.last)
  end

  test "should show date_difference" do
    get date_difference_url(@date_difference)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_difference_url(@date_difference)
    assert_response :success
  end

  test "should update date_difference" do
    patch date_difference_url(@date_difference), params: { date_difference: { date1: @date_difference.date1, date2: @date_difference.date2, diff: @date_difference.diff } }
    assert_redirected_to date_difference_url(@date_difference)
  end

  test "should destroy date_difference" do
    assert_difference("DateDifference.count", -1) do
      delete date_difference_url(@date_difference)
    end

    assert_redirected_to date_differences_url
  end
end

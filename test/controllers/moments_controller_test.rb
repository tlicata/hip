require 'test_helper'

class MomentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moment = moments(:one)
  end

  test "should get index" do
    get moments_url
    assert_response :success
  end

  test "should get new" do
    get new_moment_url
    assert_response :success
  end

  test "should create moment" do
    assert_difference('Moment.count') do
      post moments_url, params: { moment: { date: @moment.date, info: @moment.info, name: @moment.name } }
    end

    assert_redirected_to moment_path(Moment.last)
  end

  test "should show moment" do
    get moment_url(@moment)
    assert_response :success
  end

  test "should get edit" do
    get edit_moment_url(@moment)
    assert_response :success
  end

  test "should update moment" do
    patch moment_url(@moment), params: { moment: { date: @moment.date, info: @moment.info, name: @moment.name } }
    assert_redirected_to moment_path(@moment)
  end

  test "should destroy moment" do
    assert_difference('Moment.count', -1) do
      delete moment_url(@moment)
    end

    assert_redirected_to moments_path
  end
end

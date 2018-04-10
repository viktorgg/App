require 'test_helper'

class SubsusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subsuser = subsusers(:one)
  end

  test "should get index" do
    get subsusers_url
    assert_response :success
  end

  test "should get new" do
    get new_subsuser_url
    assert_response :success
  end

  test "should create subsuser" do
    assert_difference('Subsuser.count') do
      post subsusers_url, params: { subsuser: { subsid: @subsuser.subsid, type: @subsuser.type, userid: @subsuser.userid } }
    end

    assert_redirected_to subsuser_url(Subsuser.last)
  end

  test "should show subsuser" do
    get subsuser_url(@subsuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_subsuser_url(@subsuser)
    assert_response :success
  end

  test "should update subsuser" do
    patch subsuser_url(@subsuser), params: { subsuser: { subsid: @subsuser.subsid, type: @subsuser.type, userid: @subsuser.userid } }
    assert_redirected_to subsuser_url(@subsuser)
  end

  test "should destroy subsuser" do
    assert_difference('Subsuser.count', -1) do
      delete subsuser_url(@subsuser)
    end

    assert_redirected_to subsusers_url
  end
end

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
  	@user = users(:henry)
  	@other_user = users(:stanley)
  end

  test "should get new" do
  	get new_user_path
  	assert_response :success
  end

  test "should redirect show when not logged in" do
  	get user_path(@user)
  	assert_not flash.empty?
  	assert_redirected_to new_session_url
  end
  

  
  
  
end

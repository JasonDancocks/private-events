require 'test_helper'

class UserSignupTestTest < ActionDispatch::IntegrationTest
	test "signup" do
		get new_user_path
		assert_difference "User.count", 1 do
			post users_path, params: {user: { name: "Example"}}
		end
		follow_redirect!
		assert_template "home/home"
	end
end

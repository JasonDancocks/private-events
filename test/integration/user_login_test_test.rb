require 'test_helper'

class UserLoginTestTest < ActionDispatch::IntegrationTest
	def setup
		@user = users(:henry)
	end

	test "login with invalid information" do
		get new_session_path
		assert_template "sessions/new"
		post sessions_path, params: {session: {name: ""}}
		assert_template "sessions/new"
		assert_not flash.empty?
		get root_path
		assert_not flash.empty?
	end

end

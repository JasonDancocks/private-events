class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
		if user
			log_in user
			redirect_to user
		else
			message = "User not found"
			flash[:warning] = message
			redirect_to root_path
		end
	end
end

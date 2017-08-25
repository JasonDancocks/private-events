class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
		if user
			log_in user
			redirect_to root_path
		else
			message = "User not found"
			flash[:warning] = message
			render "new"
		end
	end

	def destroy
		log_out if logged_in?
		redirect_to root_path
end

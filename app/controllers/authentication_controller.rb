class AuthenticationController < ApplicationController
	def new
	end

	def create
		user = user.findBy(email: (params[:email]))
		if user && user.authenticate(params[:password])
			session[:user_id] = user.user_id
		end
	end
end
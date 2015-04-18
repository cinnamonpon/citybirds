class SessionsController < ApplicationController
	def login_page
		if session[:user_id]
			redirect_to '/index'
		end
	end

	def login
		user = User.authenticate(params[:username], params[:password])

		if user
			session[:user_id] = user.id
			redirect_to '/index'
		else
			puts 'test'
		end
	end

	def register_page
		if session[:user_id]
			redirect_to '/index'
		end		
	end

	def register
		user = User.create_user(params[:username], params[:fname], params[:lname], params[:password], params[:confirm_password])

		if user
			session[:user_id] = User.authenticate(params[:username], params[:password]).id
			redirect_to '/index'
		else
			redirect_to action: :login_page
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to '/index'
	end

end

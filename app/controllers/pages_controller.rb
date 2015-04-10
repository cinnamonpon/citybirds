
class PagesController < ApplicationController
	def trending
		@curr_user = User.where(id: session[:user_id]).first
  		@curr_post = Post.where(id: session[:post_id]).first
	end

	def new
		@curr_user = User.where(id: session[:user_id]).first
  	 	@curr_post = Post.where(id: session[:post_id]).first
	end

	def discover

	end
end

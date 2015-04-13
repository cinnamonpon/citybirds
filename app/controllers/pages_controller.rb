
class PagesController < ApplicationController
	def trending
		@all_posts = Post.get_trends()
		@curr_user = User.where(id: session[:user_id]).first
	    @curr_post = Post.where(id: session[:post_id]).first	
	end

	def new
		@all_posts = Post.get_recent()
		@curr_user = User.where(id: session[:user_id]).first
  	 	@curr_post = Post.where(id: session[:post_id]).first
	end

	def discover
		@curr_user = User.where(id: session[:user_id]).first
		@all_users = User.get_all(session[:user_id])
	end

	def view_post 
		session[:post_id] = params[:id]
		ref = request.referer
		to_path = ref[ref.rindex('/')..ref.length]
		redirect_to to_path+'#viewModal'
	end
end


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
		post = Post.where(id: session[:post_id]).first
		session[:poster_id] = User.where(id: post.user_id).first.id
		session[:post_user] = User.where(id: post.user_id).first.fname
		@all_comments = Comment.all_comments(session[:poster_id], session[:post_id])
		post = Post.where(id: session[:post_id]).first
		ref = request.referer
		to_path = ref[ref.rindex('/')..ref.length]
		redirect_to to_path+'#viewModal'
	end

	def post_comment
		Comment.create_comment(session[:poster_id], session[:post_id], session[:user_id], params[:comment])
		@all_comments = Comment.all_comments(session[:poster_id], session[:post_id])
		ref = request.referer
		to_path = ref[ref.rindex('/')..ref.length]
		redirect_to to_path+'#viewModal'
	end

	def like_post
		Like.like_post(session[:user_id], session[:post_id])
		Post.like_post(session[:poster_id], session[:post_id])
		ref = request.referer
		to_path = ref[ref.rindex('/')..ref.length]
		redirect_to to_path+'#viewModal'
	end
end

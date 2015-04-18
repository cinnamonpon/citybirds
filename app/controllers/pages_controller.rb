
class PagesController < ApplicationController
	def trending
		@all_posts = Post.get_trends()
		@curr_user = User.where(id: session[:user_id]).first
	    @curr_post = Post.where(id: session[:post_id]).first
	    @all_comments = Comment.all_comments(session[:poster_id], session[:post_id])	
	end

	def new
		@all_posts = Post.get_recent()
		@curr_user = User.where(id: session[:user_id]).first
  	 	@curr_post = Post.where(id: session[:post_id]).first
  	 	@all_comments = Comment.all_comments(session[:poster_id], session[:post_id])
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
		ref = request.referer
		to_path = ref[ref.rindex('/')..ref.length]
		redirect_to to_path+'#viewModal'
	end

	def profile
		@curr_user = User.where(id: session[:user_id]).first
		@user = User.where(id: params[:id]).first
		@subscriptions = Subscription.where(subscriber: @user.id).to_a
		@subscribed = Subscription.where(subscriber: session[:user_id], subscribee: params[:id]).first
	end

	def subscribe
		Subscription.add(session[:user_id], params[:subscribee])
	end

	def unsubscribe
		Subscription.delete(session[:user_id], params[:subscribee])
	end

	def post_comment
		Comment.create_comment(session[:poster_id], session[:post_id], session[:user_id], params[:comment])
		Notification.add(session[:user_id], session[:post_id], session[:poster_id], "commented on")
		@all_comments = Comment.all_comments(session[:poster_id], session[:post_id])
		ref = request.referer
		to_path = ref[ref.rindex('/')..ref.length]
		redirect_to to_path+'#viewModal'
	end

	def like_post
		Like.like_post(session[:user_id], session[:post_id])
		Notification.add(session[:user_id], session[:post_id], session[:poster_id], "liked")
 		ref = request.referer
 		to_path = ref[ref.rindex('/')..ref.length]
 		redirect_to to_path+'#viewModal'
 	end

end

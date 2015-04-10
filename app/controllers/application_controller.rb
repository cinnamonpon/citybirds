class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def index
  	 @curr_user = User.where(id: session[:user_id]).first
  	 @curr_post = Post.where(id: session[:post_id]).first
  end

  def upload
		user_id = session[:user_id]
		title = params[:title]
		post = params[:post].original_filename
		extension = post[post.rindex('.')+1..post.length]

		if extension.start_with?('png') || extension.start_with?('jpg') || extension.start_with?('gif') ||extension.start_with?('bmp') 
			mtype = "image/" + extension
		else
			mtype = "video/" + extension
		end

		directory = "app/assets/uploads"
		path = File.join(directory, post);

		File.open(path, 'wb') { |f| f. write(params[:post].read) }
		new_post = Post.create_post(title, user_id, path, 'uploads/'+post, mtype)

		session[:post_id] = new_post.id
		redirect_to '#viewModal'
	end


  protect_from_forgery with: :exception

end
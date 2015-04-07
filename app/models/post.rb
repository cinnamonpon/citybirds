class Post < ActiveRecord::Base

	def create_post(user_id, title, message, media, date_modified)
		post = Post.create(user_id: user_id, title: title, message: message, media: media, date_modified: date_modified)
		post
	end
end

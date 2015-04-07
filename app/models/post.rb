class Post < ActiveRecord::Base

	def self.create_post(user_id, title, message, media)
		post = Post.create(user_id: user_id, title: title, message: message, media: media, rating: 0)
	end

	def self.get_post(user_id, post_id)

	end
end

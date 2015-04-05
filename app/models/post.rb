class Post < ActiveRecord::Base
	def self.create_post(user_id, path)
		new_post = Post.create(user_id: user_id, path:path)
		new_post
	end
end

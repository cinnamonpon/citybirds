class Post < ActiveRecord::Base
	def self.create_post(title, user_id, path, dir, mtype)
		new_post = Post.create(title: title, user_id: user_id, path:path, dir:dir, mtype:mtype)
		new_post
	end
end

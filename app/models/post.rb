class Post < ActiveRecord::Base
	def self.create_post(title, user_id, path, dir, mtype)
		new_post = Post.create(title: title, user_id: user_id, path:path, dir:dir, mtype:mtype)
		new_post
	end

	def self.get_trends
		trend = Post.find_by_sql('Select * from posts order by likes desc').to_a;
		trend
	end

	def self.get_recent
		recent = Post.find_by_sql('Select * from posts order by created_at desc').to_a;
		recent
	end
end

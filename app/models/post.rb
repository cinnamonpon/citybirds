class Post < ActiveRecord::Base
	belongs_to :user, foreign_key: 'user_id'
	has_many :comment

	def self.create_post(user_id, title, message, media)
		post = Post.create(user_id: user_id, title: title, message: message, media: media, rating: 0)
	end

	def self.get_post(user_id, post_id)
		post = Post.where('user_id = ? and post_id = ?', user_id, post_id).to_a.first
		post
	end

	def self.edit_likes(user_id, post_id, method)
		like = Post.where('user_id = ? and post_id = ?', user_id, post_id).to_a.first
		if method == "up"
			like.likes = like.likes + 1
		elsif method == "down"
			like.likes = like.likes - 1
		end
	end

	def self.delete_post(user_id, post_id)
		post = Post.where('user_id = ? and post_id = ?', user_id, post_id).destroy_all
	end
end

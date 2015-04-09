class Comment < ActiveRecord::Base
	belongs_to :user, foreign_key: "user_id"


	def self.create_comment(user_id, post_id, poster_id, message, date_modified)
		comment = Comment.create(user_id: user_id, post_id: post_id, poster_id: poster_id, message: message, date_modified: date_modified, rating: 0)
		comment
	end

	def self.retrieve_comments(user_id, post_id)
		comments = Comment.where('user_id = ? AND post_id = ?', user_id, post_id).to_a
		comments
	end

	def self.delete_comment(user_id, post_id, poster_id, comment_id)
		Comment.where('user_id = ? and post_id = ? and poster_id = ? and comment_id = ?', user_id, post_id, poster_id, comment_id).destroy_all

	end
end

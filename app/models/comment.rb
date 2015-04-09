class Comment < ActiveRecord::Base
	belongs_to :user, foreign_key: "user_id"


	def create_comment(user_id, post_id, message, date_modified)
		comment = Comment.create(user_id: user_id, post_id: post_id, message: message, date_modified: date_modified, rating: 0)
		comment
	end

	def retrieve_comments(user_id, post_id)
		comments = Comment.where('user_id = ? AND post_id = ?', user_id, post_id).to_a
		comments
	end
end

class Comment < ActiveRecord::Base

	def create_comment(user_id, post_id, message, date_modified)
		comment = Comment.create(user_id: user_id, post_id: post_id, message: message, date_modified: date_modified, rating: 0)
		comment
	end
end

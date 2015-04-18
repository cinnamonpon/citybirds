class Comment < ActiveRecord::Base
	def self.create_comment(user_id, post_id, comment_user, message)
		Comment.create(user_id: user_id, post_id: post_id, comment_user: comment_user, message: message)
	end

	def self.all_comments(user_id, post_id)
		all = Comment.where('user_id = ? and post_id = ?', user_id, post_id).to_a
		all
	end
end

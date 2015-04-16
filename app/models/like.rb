class Like < ActiveRecord::Base

	def self.like_post(user_id, post_id)
		return false if check_like(user_id, post_id) == true
		Like.create(user_id: user_id, post_id: post_id)
	end

	def self.check_like(user_id, post_id)
		like = Like.where('user_id = ? and post_id = ?', user_id, post_id).first
		if like
			true
		else
			false
		end
	end

	def self.sort_like
		like = Like.find_by_sql("Select count(*), post_id from likes group by post_id order by count(*) desc").to_a
		like
	end
end
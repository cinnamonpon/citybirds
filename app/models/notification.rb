class Notification < ActiveRecord::Base

	def self.add(liker, post_id, user_id, ntype)
		noti = Notification.create(liker: liker, post_id: post_id, user_id: user_id, ntype: ntype)
		noti
	end

	def self.all_noti(user_id)
		noti = Notification.where(user_id: user_id).to_a
		noti
	end
end

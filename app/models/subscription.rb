class Subscription < ActiveRecord::Base

	def self.get_subscribers(user_id)
		subscribers = Subscription.where("subscriber = ?", user_id).all.to_a
		subscribers
	end

	def self.get_subscriptions(user_id)
		subscriptions = Subscription.where("subscribee = ?", user_id).all.to_a
		subscriptions
	end
end

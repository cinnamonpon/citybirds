class Subscription < ActiveRecord::Base

	validates :subscriber, :subscribee, :presence => true, :uniqueness => true

	def self.add(subscriber, subscribee)
		new_sub = Subscription.create(subscriber: subscriber, subscribee: subscribee)
		new_sub
	end

	def self.delete(subscriber, subscribee)
		Subscription.where(subscriber: subscriber, subscribee: subscribee).destroy_all
		
	end
end

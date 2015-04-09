class PagesController < ApplicationController
	def trending
		#@all_posts = PagesController.trending_filter(Post.all.to_a)
	end

	def discover
		all_users = User.all.to_a
		size = all_users.size
		@display_users = [] #variable for the users to be displayed in discover
		rng = Random.new
		if all_users.size > 5
			size = 5
		end
		for i in 0..size
			@display_users[i] = all_users[rng.rand(all_users.size)] #creates a random number
			all_users.delete(all_users[rng.rand(all_users.size)])
		end
	end
 
	def self.trending_filter(posts) #unoptimized sorting algorithm O(n^2)
		filtered = []
		max = -1
		index = -1
		for i in 0..posts.size
			for j in 0..posts.size
				if min < posts[j]
					min = posts[j]
					index = j
				end
			end
			filtered[i] = posts[j]
		end
		filtered
	end
end

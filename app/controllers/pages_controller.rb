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
	    temp_data = []
	    for i in 0..posts.size-1
	        temp_data[i] = posts[i]
	    end
		max = -1
		index = -1
		temp_size = posts.size - 1
		for i in 0..posts.size-1
    		max = -1
			for j in 0..temp_size
				if max < temp_data[j]
					max = temp_data[j]
					index = j
				end
			end
			filtered[i] = max
			temp_data.delete_at(index)
			temp_size = temp_size - 1
		end
		filtered
	end
end

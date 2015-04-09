class ProfileController < ApplicationController
	def test_post

	end

	def post
		user_id = 1
		title = params[:title]
		message = params[:message]
		file = params[:upload]
		fname = file.original_filename
		dir = 'public/uploads/' + user_id.to_s #makes a directory for the specific user
		system 'mkdir', '-p', dir  #generates directory
		path = File.join(dir, fname)
		File.open(path, "wb") do |f| f.write(file.read)
		end
		Post.create_post(1, title, message, path)
		redirect_to '/index'
	end

	def comment

	end
end

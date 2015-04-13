class User < ActiveRecord::Base

	def self.create_user(username, fname, lname, password, password_confirm)
		return false if password != password_confirm
		return false if User.where(username: username).to_a.size > 0

		salt = BCrypt::Engine.generate_salt
		hashed_password = BCrypt::Engine.hash_secret(password, salt)
		new_user = User.create(username: username, fname: fname, lname: lname, password_hash: hashed_password, salt: salt)
		new_user
	end

	def self.authenticate(username, password)
		user = User.where(username:username).first

		if user.present? && user.password_hash == BCrypt::Engine.hash_secret(password, user.salt)
			user
		else
			nil
		end
	
	end

	def self.get_all(user_id)
		users = User.where.not(id: user_id).to_a
	end
	
end

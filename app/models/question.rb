class Question < ActiveRecord::Base
	def gravatar
		"http://en.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
	end
end

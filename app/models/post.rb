class Post < ActiveRecord::Base
	belongs_to :user

	def name user_id
 		user = User.find_by_id(user_id)
 		name = user.name 		
 	end
end

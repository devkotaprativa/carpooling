class Post < ActiveRecord::Base
	belongs_to :user
	has_one :pool
	validates :departure, :destination, :seats, :d_time, presence: true
	def name user_id
 		user = User.find_by_id(user_id)
 		if user.name.present?
 		  name = user.name 	
 	   else 
 	   	name = "N/A"
 	   end
 	end

 	def date_time post 	 			
 			if post.d_time.present?
	 			@datetime = post.d_time.to_s.split("U")
	 			@datetime = @datetime.first
	 			else
	 			@datetime = "undefined"
	 		end 				
 	end
 	

end

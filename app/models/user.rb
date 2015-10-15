class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 	has_many :posts
 	def get_user_name user_id
 		user = User.find_by_id(user_id)
 		@name = user.name 		
 	end
end

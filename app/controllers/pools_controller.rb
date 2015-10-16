class PoolsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@pool = Pool.new(set_params)
  	@pool.post_id = @post.id
  	 
  	if @pool.seats.present?
	  	if @pool.seats >@post.seats
	  		flash[:msg] = "required seat is greater than available seat"
	  		redirect_to new_user_post_pool_path
	  	 else if
	  	 	@pool.seats<=0 
	  	 	flash[:msg] = "at least one seat should be reserved"
	  	 	redirect_to new_user_post_pool_path
	  	 else
	  	 	if @pool.save
	  	 		flash[:msg] = "sucessfully saved"
	  	 		redirect_to user_posts_path(@post.user_id)
	  	 	else
	  	 		flash[:msg] = "failed"
	  	 		redirect_to user_posts_path(@post.user_id)
	  	 	end
	  	 	end
	  	end
	  else
	  	flash[:msg] = "must reserve at least 1 seat to proceed"
	  	redirect_to new_user_post_pool_path
    end    
  end

  def new
  	@post = Post.find(params[:post_id])
  	@pool = Pool.new
  end

  def index
  end

  private
  def set_params
  	params.require(:pool).permit(:seats)
  end
end

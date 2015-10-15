class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  def edit
  end

  def update
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = params[:user_id]
    @post.save
    redirect_to user_posts_path
  end

  def show
  end

  def destroy
  end

  def post_params
    params.require(:post).permit(:departure, :destination, :seats, :d_time)
  end
end

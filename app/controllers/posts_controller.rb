class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

  def show
  end

  def destroy
  end
end

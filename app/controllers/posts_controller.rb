class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :desc).limit(10)
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end

class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]
  def show
  end
  
  def new 
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)

    redirect_to post_path(@post)
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end

class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]
  def show
  end
  
  def new 
    @post = Post.new
  end

  def edit
  end

  def update
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end

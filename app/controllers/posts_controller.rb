class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]
  def show
  end
  
  def new 
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

   def update	  def update
    @post = Post.find(params[:id])	    @post = Post.find(params[:id])

     if @post.update(post_params)
    @post.update(post_params)	      redirect_to post_path(@post)

     else
    redirect_to post_path(@post)	      render :edit
    end
  end	  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end

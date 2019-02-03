class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end

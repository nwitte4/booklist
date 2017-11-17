class AuthorsController < ApplicationController
  before_action :get_author, only: [:show, :destroy]

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show

  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      redirect_to :new #or new_author_path
    end
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end

  private
  def author_params
    params.require(:author).permit(:name)
  end

  def get_author
    @author = Author.find_by_id(params[:id])
  end
end

class BooksController < ApplicationController
  before_action :get_book, only: [:show, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def create
    author = Author.find_by_id(params[:author_id])
    author.books.create(book_params)
    redirect_to author
  end

  def destroy
    @book.destroy
    redirect_to authors_path
  end

  private

  def get_book
    @book = Book.find_by_id(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :tag_ids)
    # if you needed to handle multiple tag ids, you would need :tag_ids = []; and then check boxes instead of a pull down list
  end

end

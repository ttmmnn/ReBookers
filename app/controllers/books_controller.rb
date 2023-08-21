class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def show
  end

  def edit
  end

  def updata
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end

class BookmakersController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to bookmaker_path(book.id)
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to bookmaker_path(book.id)
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to bookmaker_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

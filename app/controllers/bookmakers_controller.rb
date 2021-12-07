class BookmakersController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "SUCCESS"
      redirect_to bookmaker_path
    else
      flash[:alert] = "ERROR"
      redirect_to bookmakers_path
    end
  end
  def index

    @books = Book.all
    @books = Book.all.order(created_at: :desc)
  end

  def show
    @book = Book.find(params[:id])
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to edit_bookmaker_path
    else
      render 'bookmakers/edit'
    end
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to bookmakers_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

class BookController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(params[:book].permit(:title, :author))
    book.save
    redirect_to root_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(params[:book].permit(:title, :author))
    redirect_to root_path
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to root_path
  end
end

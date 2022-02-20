class BooksController < ApplicationController
  def new
  end
  def index
   @books = Book.all
   @book = Book.new
   @user = @book.user 
  end
  def create
   @book = Book.new(book_params)
   binding.pry
   @book.user_id = current_user.id
   if 
    @book.save
    redirect_to book_path(@book)
   else
    @books = Book.all
    render 'index'
   end
  end
  def show
   @book = Book.find(params[:id])
  end
  def edit
   @book = Book.find(params[:id])
  end
  def update
   @book =Book.find(params[:id])
   @book.update
   redirect_to book_path(@book.id)
  end
  private
  def user_params
   params.require(:user).permit(:name, :profile_image, :introduction)
  end
  def book_params
   params.require(:book).permit(:title, :opinion)
  end
end
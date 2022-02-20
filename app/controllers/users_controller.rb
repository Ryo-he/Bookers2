class UsersController < ApplicationController
  def new
  end
  def show
   @user = User.find(params[:id])
   @books = Book.all
   @book = Book.new
  end
  def create
   @book = Book.new(book_params)
   @book.user_id = current_user.id
   if @book.save
    redirect_to book_path(@book)
   else
    @books = Book.all
    render 'index'
   end
  end

  def index
   @users = User.all
  end
  def edit
   @user = User.find(params[:id])
  end
  def update
   @user = User.find(params[:id])
   @user.update(user_params)
   redirect_to user_path(current_user.id)
  end
  
  private
  def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
  def book_params
  params.requrire(:book).permit(:title, :opinion, :profile_image)
  end
  end
end

class UsersController < ApplicationController
  def new
  end
  def show
   @user = User.find(params[:id])
   @books = Book.where(user_id: current_user)
   @book = Book.new
  end
  def create
   @book = Book.new(book_params)
   @book.user_id = current_user.id
   if @book.save
    flash[:notice] = 'You have created book successfully.'
    redirect_to book_path(@book.id)
   else
    @books = Book.all
    render:index
   end
  end

  def index
   @users = User.all
   @books = Book.where(user_id: current_user)
   @book = Book.new
  end
  def edit
   @user = User.find(params[:id])
  end
  def update
   @user = User.find(params[:id])
  if @user.update(user_params)
   flash[:notice] = 'You have updated user successfully.'
   redirect_to user_path(@user.id)
  else
   render:edit
  end
  end
  
 private
  def user_params
  params.require(:user).permit(:name, :introduction, :profile_image)
  end
  def book_params
  params.requrire(:book).permit(:title, :opinion)
  end
end


class BooksController < ApplicationController
  def index
  end
  def create
    @book = Book.new(book_params)
    @book.save
    @book.user_id = current_user_id
    redirect to show_book_path(@book.id)
  end
  def show
  end
private
def book_params
params.require(:book).permit(:title, :opinion, :image)
end
end
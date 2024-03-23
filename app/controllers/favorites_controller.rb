class FavoritesController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: book.id)
    favorite.save
    previous_page_url = request.referer
    redirect_to previous_page_url
  end
    
  def destroy
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: book.id)
    favorite.destroy
    previous_page_url = request.referer
    redirect_to previous_page_url
  end

end

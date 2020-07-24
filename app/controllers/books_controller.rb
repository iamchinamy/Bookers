class BooksController < ApplicationController

	def books
		@book = Book.
		@books = Book.all
	end

	def create
		book = Book.new(book_params)
		book.save
		redirect_to :action => 'show_books'
	end

	def show
		@book = Book.find(params[:id])
	end

	private
	def book_params
		params.require(:book).permit(:title, :body)
	end

end

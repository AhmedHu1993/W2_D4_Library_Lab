class Library

  attr_reader :name
  attr_accessor :books

  def initialize(name)
    @name = name
    @books = []
  end

  def adding_book_to_library(book)
    @books << book
  end

  #return if @books.include?book
  def lend_book(customer, book)
    if @books.include?(book)
      @books.delete(book)
      customer.borrow_book(book)
    else
      return "Sorry the book is not available at the moment"
    end
  end

end

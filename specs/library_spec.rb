require("minitest/autorun")
require("minitest/rg")
require_relative("../library")
require_relative("../book")
require_relative("../customer")

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new("Alexandria")
    @book1 = Book.new("Harry Potter 1")
    @book2 = Book.new("Harry Potter 2")
    @book3 = Book.new("Harry Potter 3")
    @book4 = Book.new("Harry Potter 4")
    @customer = Customer.new("Jordon")
  end

  def test_library_name
    assert_equal("Alexandria", @library.name)
  end

  def test_adding_book_to_library__no_books
    assert_equal(0, @library.books.count)
  end

  def test_adding_book_to_library__after_adding
    @library.adding_book_to_library(@book1)
    @library.adding_book_to_library(@book2)
    assert_equal(2, @library.books.count)
  end

  def test_customer_borrowed_book
    @library.adding_book_to_library(@book1)
    @library.adding_book_to_library(@book2)
    @library.lend_book(@customer, @book3)
    assert_equal(2, @library.books.count)
    assert_equal(0, @customer.borrowed_books.count)
    assert_equal("Sorry the book is not available at the moment", @library.lend_book(@customer, @book4))
  end
end

require("minitest/autorun")
require("minitest/rg")
require_relative("../book")


class TestBook < MiniTest::Test

  def test_book_title
    book1 = Book.new("Harry Potter")
    assert_equal("Harry Potter", book1.title)
  end

end

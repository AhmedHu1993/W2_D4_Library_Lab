class Customer
  attr_reader :name
  attr_accessor :borrowed_books
  
  def initialize(name)
    @name = name
    @borrowed_books = []
  end
end

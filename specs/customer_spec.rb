require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")

class TestCustomer < MiniTest::Test
  def test_customer_name
    customer = Customer.new("Jordon")
    assert_equal("Jordon", customer.name)
  end

end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/topping'

class ToppingTest < Minitest::Test
  def test_it_exists
    topping = Topping.new(name: "Anchovies", price: 2, is_vegetarian: "no")

    assert_instance_of Topping, topping
  end

  def test_it_has_attributes
    topping = Topping.new(name: "Anchovies", price: 2, is_vegetarian: "no")

    assert_equal "Anchovies", topping.name
    assert_equal 2, topping.price
    assert_equal false, topping.is_vegetarian
  end

end

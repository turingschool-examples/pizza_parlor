require "minitest/autorun"
require "./lib/topping"

class ToppingTest < Minitest::Test
  def test_creates_topping
    t = Topping.new({name: "Anchovies",
                     price: 15,
                     is_vegetarian: false})

    assert_equal "Anchovies", t.name
    assert_equal 15, t.price
    refute t.is_vegetarian
  end
end

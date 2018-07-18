require 'minitest/autorun'
require 'minitest/pride'
require './lib/toppings_menu'

class ToppingsMenuTest < Minitest::Test
  def test_it_exists
    tm = ToppingsMenu.new

    assert_instance_of ToppingsMenu, tm
  end

  def test_it_can_add_an_individual_item
    tm = ToppingsMenu.new
    tm.add_topping({name: "Artichoke hearts", price: 2, is_vegetarian: "yes"})

    assert_equal 1, tm.toppings.count
  end

  def test_it_can_find_by_name
    tm = ToppingsMenu.new
    tm.add_topping({name: "Artichoke hearts", price: 2, is_vegetarian: "yes"})

    actual = tm.find_by_name("Artichoke hearts")

    assert_instance_of Topping, actual
    assert_equal "Artichoke hearts", actual.name
  end
end

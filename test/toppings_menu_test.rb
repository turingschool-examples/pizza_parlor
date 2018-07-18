require 'minitest/autorun'
require 'minitest/pride'
require './lib/toppings_menu'

class ToppingsMenuTest < Minitest::Test
  def test_it_exists
    tm = ToppingsMenu.new

    assert_instance_of ToppingsMenu, tm
  end

  def test_it_can_find_by_name
    tm = ToppingsMenu.new
    tm.load_menu("./data/toppings.csv")

    assert_instance_of Topping, tm.find_by_name("Artichoke hearts")
    assert_equal "Artichoke hearts", tm.find_by_name("Artichoke hearts").name
  end
end

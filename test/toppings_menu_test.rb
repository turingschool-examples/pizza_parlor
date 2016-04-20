require "minitest/autorun"
require "./lib/toppings_menu"
require "./lib/topping"

class ToppingsMenuTest < Minitest::Test
  def test_finds_no_topping_when_there_are_none
    tm = ToppingsMenu.new
    assert_equal nil, tm.find_by_name("Anchovies")
  end

  def test_finds_a_topping_by_name
    topping = Topping.new({name: "Anchovies"})

    tm = ToppingsMenu.new
    tm.toppings = [topping]

    assert_equal topping, tm.find_by_name("Anchovies")

    # tm.load_topping(topping)
    # tm.toppings = [topping]
    # ToppingsMenu.new([topping, topping2, topping3])

  end

  def test_can_btw_also_load_from_a_stupid_csv
    tm = ToppingsMenu.new
    assert_equal nil, tm.find_by_name("Anchovies")

    tm.load_data("./data/toppings.csv")

    assert_equal "Anchovies", tm.find_by_name("Anchovies").name
  end

  def test_topping_with_string_price_sucks
    topping = Topping.new({name: "Anchovies", price: "15"})
    tm = ToppingsMenu.new
    tm.toppings = [topping]

    assert_equal 15, tm.find_by_name("Anchovies").price
  end

  def test_topping_with_nil_price
  end
end

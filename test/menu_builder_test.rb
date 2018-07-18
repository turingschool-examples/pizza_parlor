require 'minitest/autorun'
require 'minitest/pride'
require './lib/menu_builder'

class MenuBuilderTest < Minitest::Test
  def test_it_exists
    mb = MenuBuilder.new

    assert_instance_of MenuBuilder, mb
  end

  def test_it_can_build_a_menu
    mb   = MenuBuilder.new
    menu = mb.build("./data/toppings.csv")

    assert_instance_of ToppingsMenu, menu
    assert_equal 28, menu.toppings.count
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/menu_builder'
require './lib/adaptors/csv_adaptor'

class MenuBuilderTest < Minitest::Test
  def test_it_exists
    mb = MenuBuilder.new

    assert_instance_of MenuBuilder, mb
  end

  def test_it_can_build_from_a_csv
    mb   = MenuBuilder.new
    csv  = CsvAdaptor.new
    menu = mb.build(csv)

    assert_instance_of ToppingsMenu, menu
    assert_equal 28, menu.toppings.count
  end
end

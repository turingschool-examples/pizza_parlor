require 'minitest/autorun'
require 'minitest/pride'
require './lib/adaptors/csv_adaptor'

class CsvAdaptorTest < Minitest::Test
  def test_it_exists
    ca = CsvAdaptor.new

    assert_instance_of CsvAdaptor, ca
  end

  def test_it_returns_a_collection_of_toppings
    ca = CsvAdaptor.new

    actual = ca.load
    expected_first = {name: "Artichoke hearts",
                      price: 2,
                      is_vegetarian: "yes"}

    assert_equal 28, actual.length
    assert_equal expected_first, actual.first
  end
end

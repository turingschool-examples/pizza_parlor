require 'minitest/autorun'
require 'minitest/pride'
require './lib/adaptors/http_adaptor'

class HttpAdaptorTest < Minitest::Test
  def test_it_exists
    ha = HttpAdaptor.new

    assert_instance_of HttpAdaptor, ha
  end

  def test_it_returns_a_collection_of_toppings
    ha = HttpAdaptor.new

    actual = ha.load

    assert_equal 28, actual.length
    assert_equal "Artichoke hearts", actual.first[:name]
    assert_equal 2, actual.first[:price]
    assert_equal "yes", actual.first[:is_vegetarian]
  end
end

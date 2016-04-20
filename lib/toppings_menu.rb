require "csv"
require "topping"

class ToppingsMenu
  attr_accessor :toppings
  def initialize
    @toppings = [] # Array[Topping]
  end

  def find_by_name(name)
    toppings.find { |t| t.name == name }
  end

  def load_data(path)
    @toppings = CSV.open(path, headers: true, header_converters: :symbol).map do |row|
      Topping.new(row)
    end
  end
end

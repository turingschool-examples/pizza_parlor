require 'csv'
require './lib/topping'

class ToppingsMenu
  def initialize
    @toppings = []
  end

  def find_by_name(name)
    @toppings.find do |topping|
      topping.name == name
    end
  end

  def load_menu(location)
    CSV.foreach(location, headers: true, header_converters: :symbol) do |row|
      @toppings << Topping.new(row)
    end
  end
end

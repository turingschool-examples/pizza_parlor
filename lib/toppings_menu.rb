require 'csv'
require './lib/topping'

class ToppingsMenu
  attr_reader :toppings

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
      add_topping(row)
    end
  end

  def add_topping(topping)
    @toppings << Topping.new(topping)
  end
end

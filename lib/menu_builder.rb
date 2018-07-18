require 'csv'
require './lib/toppings_menu'

class MenuBuilder
  def build(location)
    menu = ToppingsMenu.new
    CSV.foreach(location, headers: true, header_converters: :symbol) do |row|
      menu.add_topping(row)
    end
    return menu
  end
end

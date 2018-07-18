require 'csv'
require './lib/toppings_menu'

class MenuBuilder
  def build(adaptor)
    toppings = adaptor.load
    menu     = ToppingsMenu.new
    toppings.each do |topping|
      menu.add_topping(topping)
    end
    return menu
  end
end

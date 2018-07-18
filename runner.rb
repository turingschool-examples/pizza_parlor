require './lib/menu_builder'
require './lib/adaptors/csv_adaptor'
require './lib/adaptors/http_adaptor'

csv_adaptor  = CsvAdaptor.new
http_adaptor = HttpAdaptor.new
mb           = MenuBuilder.new
menu_1       = mb.build(csv_adaptor)
menu_2       = mb.build(http_adaptor)

puts "Menu 1 is holding #{menu_1.toppings.count} toppings loaded from CSV, one of which is #{menu_1.find_by_name("Artichoke hearts").name}."
puts "Menu 2 is holding #{menu_2.toppings.count} toppings loaded from HTTP, one of which is #{menu_2.find_by_name("Spinach").name}."


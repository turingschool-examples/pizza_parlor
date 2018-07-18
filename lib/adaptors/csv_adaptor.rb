require 'csv'

class CsvAdaptor
  def load
    csv_objs = CSV.read("./data/toppings.csv", headers: true, header_converters: :symbol)
    csv_objs.map do |obj|
      obj[:price] = obj[:price].to_i
      obj.to_h
    end
  end
end

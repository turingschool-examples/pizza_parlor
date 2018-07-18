class Topping
  attr_reader :name,
              :price,
              :is_vegetarian

  def initialize(attribute_hash)
    @name = attribute_hash[:name]
    @price = attribute_hash[:price]
    @is_vegetarian = convert_to_boolean(attribute_hash[:is_vegetarian])
  end

  def convert_to_boolean(string)
    if string == "no"
      false
    else
      true
    end
  end
end

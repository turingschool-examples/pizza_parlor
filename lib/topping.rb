class Topping
  attr_reader :name, :price, :is_vegetarian

  def initialize(attributes)
    @name          = attributes[:name]
    @price         = attributes[:price].to_i
    @is_vegetarian = attributes[:is_vegetarian]
  end
end

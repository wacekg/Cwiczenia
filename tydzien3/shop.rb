class Shop
  attr_accessor :name, :products_list
  def initialize(name)
    self.name = name
    self.products_list = []
  end

  def add_product(product, quantity = 1)
    quantity.times { products_list << product }
  end

  def take(product_name)
    index = products_list.index { |product| product.name == product_name }
    return products_list.delete_at(index) if index
  end
end

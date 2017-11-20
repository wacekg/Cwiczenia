class Client
  attr_accessor :name, :money, :purchased_products, :to_buy_list
  def initialize(name, money, to_buy_list)
    self.name = name
    self.money = money
    self.purchased_products = []
    self.to_buy_list = to_buy_list
  end

  def perform_shopping(shop)
    everything_done = true
    while product_name = to_buy_list.pop
      product = shop.take(product_name)
      next unless product
      if product.price > money
        shop.add_product(product)
        everything_done = false
      else
        purchased_products << product
        self.money -= product.price
      end
    end
    everything_done
  end

  def please_buy(products)
    products.each do |product|
      to_buy_list << product
    end
  end
end

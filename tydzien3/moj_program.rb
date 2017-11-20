require './client.rb'
require './product.rb'
require './shop.rb'

shop = Shop.new('Stonka')
shop.add_product(Product.new('jogurt', 1.23), 4)
shop.add_product(Product.new('szynka', 5.99), 8)
janusz = Client.new('Janusz', 30,['chleb', 'jogurt', 'jogurt', 'szynka'])
janusz.perform_shopping(shop)
janusz = Client.new('Janusz', 30,['jogurt', 'jogurt', 'szynka', 'masło'])

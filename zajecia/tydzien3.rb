#testowa zmiana treści dla git
# class Foo
#   def bar
#     :bar
#   end
#
#   def self.baz
#     :baz
#   end
# end
#--------------------------------------
# class CoffeeMachine
#   def make_coffee
#     "Making coffee now"
#   end
#
#   def add_milk
#     make_coffee = :coffee
#     "Pouring milk" + self.make_coffee
#   end
# end

#--------------------------------------,
# clas Test
#
#   def foo
#     self
#   end
#
#   def bar
#     self
#   end
#
#   def baz
#   end
# end
#
# Test.new.foo.bar.baz #+>kolejne wywołania
#------------------------------------------------
# class Bottle
#   def initialize
#     s elf.fill# class Email
#   attr_reader :from, :date, :subject
#
#   def initialize(subject, hash)
#       @from = hash[:from]
#       @date = hash[:date]
#       @subject = subject
#   end
# end
#-------------------------------------------------
# class Dog
#   def say_hello(other_dog)
#     other_dog.sniff
#   end
#   protected
#   def sniff
#     puts "Sniffing!"
#   end
# end
#--------------------------------------------------------
# class Food
#   def eat
#     puts "Munch, munch, very tasty"
#   end
#
#   protected
#
#   def prepare
#     puts "Preparing"
#   end
# end
#
# class Orange < Food
#   def blend(other_food)
#     other_food.prepare
#     puts "Blending..."
#   end
# end
#
# Orange.new.blend(Orange.new)
# Orange.new.blend(Food.new)
  #--------------------------------------------------------
#   class Animal
#     def metoda1
#       puts "tekst1"
#     end
#   end
#
# class Dog < Animal
#   def metoda2
#     puts "tekst2"
#   end
# end
#
# dog=Dog.new.metoda1
# dog=Dog.new.metoda2
#--------------------------------------------------
# class Dog
#   def initialize
#     @bark=gets
#   end
## class Email
#   attr_reader :from, :date, :subject
#
#   def initialize(subject, hash)
#       @from = hash[:from]
#       @date = hash[:date]
#       @subject = subject
#   end
# end
#   def speak
#     "I like to #{@bark}"
#   end
# end
# fido=Dog.new
# puts fido.speak

# class Dog
#   def initialize(string)
#     @bark=string
#   end
#
#   def speak
#     "I like to #{@bark}"
#   end
# end
# fido=Dog.new("tekst")
# puts fido.speak
#------------------------------------------------------
# class Dog
#   attr_accessor :bark
#   def initialize(bark)
#     @bark = bark
#   end
#
#   def speak(bark = nil)
#     "I like to #{bark || self.bark}"
#   end
# end
#----------------------------------------------------

# class Parent
#   def status
#     "I am happy"
#   end
# end
#
# class Child < Parent
#   def status
#     # super
#     "ARGH #{super}"
#   end
# end
# puts Child.new.status
#----------------------------------------------------
# class Email
#   attr_reader :from, :date, :subject
#
#   def initialize(subject, hash)
#       @from = hash[:from]
#       @date = hash[:date]
#       @subject = subject
#   end
# end
#
# email=Email.new("CodeSensei", {:date => "2017-11-04", :from =>"Ferdous"})
#
# puts "Date:    #{email.date}"
# puts "From:    #{email.from}"
# puts "Subiect: #{email.subject}"

# class Email
#   def date
#     @date=date
#   end
#   def from
#     @from=from
#   end
#   def subject
#     @subject=subject
#   end
#--------------------------------------------------------------
# class Mailbox
#   attr_reader :emails
#
#   def initialize(group, emails)
#     @emails = emails
#     @group = group
#   end
#
#   def add (new_email)
#     @emails << new_email
#   end
#
#   def remove (del_email)
#     if del_email==emails[new_email]
#       emails.delete
#     else
#       emails.delete_at emails[0]
#     end
#   end
# end
#
# class EmailWithAttachment < Email
#
#   attr_accesor :attachment
#   def initialize(subject, hash)
#     super
#     @attachment = hash[:attachment]
#   end
#
# end
#
# email = EmailWithAttachment.new("CodeSensei", { :date => "2017-11-04", :from => "Ferdous", attachment: "plik.zip" })
# email.attachment#"plik.zip"
# email.attachment = "nowy plik"
# email.attachment # => "nowy plik"

# emails = [
#   Email.new("CodeSensei", { :date => "2017-11-04", :from => "Ferdous" }),
#   Email.new("Re: CodeSensei", { :date => "2017-11-04", :from => "Ariane" })
# ]
# mailbox = Mailbox.new("Ruby Study Group", emails)
#
# mailbox.emails.each do |email|
#   puts "Date:    #{email.date}"
#   puts "From:    #{email.from}"
#   puts "Subject: #{email.subject}"
#   puts
# end
#------------------------------------Ceny 1 wersja---------------------------------------
# require 'csv'
# require 'pry'
# class Products
#   def initialize
#     @products = []
#   end
#
#   def products
#      if @products == []
#        CSV.foreach("products.csv", headers: true) do |row|
#          @products << parse_line(row)
#        end
#      end
#      @products
#   end
#
#   def find(name)
#     result = nil
#
#     products.each do |row|
#       if row[:name] == name
#         result = "tekst #{row}"
#       end
#         binding.pry
#     end
#     result
#   end
#
#   private
#
#   def parse_line(row)
#     {
#       name: row["Product"],
#       price: row["Price(zł)"],
#       weight: row["Weight(kg)"]
#     }
#   end
# end
# products = Products.new
#
# case ARGV[0]
# when "-f"
#   puts products.find(ARGV[1])
# end
# -----------------------------------------------------2 wersja
# require 'csv'
# require 'pry'
# class Products
#   def initialize
#     @products = []
#   end
#
#   def products
#      if @products == []
#        CSV.foreach("products.csv", headers: true) do |row|
#          @products << parse_line(row)
#        end
#      end
#      @products
#   end
#
#   def find(name)
#     result = nil
#
#     products.each do |row|
#       if row[:name] == name
#         result = row
#       end
#     end
#     result
#   end
#
#   private
#
#   def parse_line(row)
#     price_header = price_header(row)
#     {
#       name: row["Product"],
#       price: row[price_header],
#       weight: row["Weight(kg)"],
#       currency: price_header[6..-2]
#     }
#   end
#
#   def price_header(row)
#     row.headers.select do |header|
#       header[0..4] == "Price"
#     end.first
#   end
# end
# products = Products.new
#
# case ARGV[0]
# when "-f"
#   found_product = products.find(ARGV[1])
#   puts "#{found_product[:name]} #{found_product[:price]}#{found_product[:currency]}"
# end
#---------------------3 wersja
# require 'csv'
# require 'pry'
# class Products
#   def initialize
#     @products = []
#   end
#
#   def products
#      if @products == []
#        CSV.foreach("products.csv", headers: true) do |row|
#          @products << parse_line(row)
#        end
#      end
#      @products
#   end
#
#   def find(name)
#     result = nil
#
#     products.each do |row|
#       if row[:name] == name
#         result = row
#       end
#     end
#     result
#   end
#
#   def find_greater_than(price)
#     products.find_all do |product|
#       product[:price] > price.to_f
#     end
#   end
#
#   private
#
#   def parse_line(row)
#     price_header = price_header(row)
#     {
#       name: row["Product"],
#       price: row[price_header].to_f,
#       weight: row["Weight(kg)"],
#       currency: price_header[6..-2]
#     }
#   end
#
#   def price_header(row)
#     row.headers.select do |header|
#       header[0..4] == "Price"
#     end.first
#   end
# end
# products = Products.new
#
# case ARGV[0]
# when "-f"
#   found_product = products.find(ARGV[1])
#   puts "#{found_product[:name]} #{found_product[:price]}#{found_product[:currency]}"
# when "-gt"
#   puts products.find_greater_than(ARGV[1])
# end
#-------------------------SILNIA 1 wersja
# def silnia(liczba)
#   if liczba == 1 || liczba == 0
#     wynik = 1
#   else
#     wynik = liczba * silnia(liczba - 1)
#   end
#   puts "#{wynik}, #{liczba}"
#   wynik
# end
#----------------------------SILNIA 2 wersja
# def silnia(liczba)
#   return 1 if liczba == 1 || liczba == 0
#   puts liczba
#   return liczba * silnia(liczba - 1)
# end
#------------------------Ciąg Fibonacciego rekurencyjnie
# def fib(liczba)
#   return liczba if liczba <= 1
#   fib(liczba-1) + fib(liczba-2)
# end
# puts fib(10)
#------------------------Ciąg Fibonacciego rekurencyjnie wer 2
# def fib(liczba, a=0, b=1)
#   if liczba == 0
#     return a
#   end
#   return liczba if liczba <= 1
#   fib(liczba-1, b, a + b)
# end
# puts fib(10)
#-----------------------Quick Sort wer 1
# void Sortuj_szybko(int lewy, int prawy)
# {
#   int i,j,piwot;

#   i = (lewy + prawy) / 2;
#   piwot = d[i]; d[i] = d[prawy];
#   for(j = i = lewy; i < prawy; i++)
#   if(d[i] < piwot)
#   {
#     swap(d[i], d[j]);
#     j++;
#   }
#   d[prawy] = d[j]; d[j] = piwot;
#   if(lewy < j - 1)  Sortuj_szybko(lewy, j - 1);
#   if(j + 1 < prawy) Sortuj_szybko(j + 1, prawy);
# }

# def quick_sort(to_sort, left, rigth)
#   i = (left + rigth)/2
#   pivot = to_sort[i]
#   to_sort[i], to_sort[rigth] = to_sort[rigth],  to_sort[i]
#   j = i = left
#   while(i < rigth) do
#     if(to_sort[i] < pivot)
#       to_sort[i], to_sort[j] = to_sort[j], to_sort[i]
#       j = j + 1
#     end
#
#     i = i + 1
#   end
#   puts "i: #{i}, j: #{j}"
#   to_sort[rigth], to_sort[j] =  to_sort[j], pivot
#   to_sort = quick_sort(to_sort, left, j - 1) if (left < j - 1)
#   to_sort = quick_sort(to_sort, j + 1, rigth) if (j + 1 < rigth)
#   to_sort
# end
#
# puts quick_sort([3,5,8,1,4,6,9,3,2,11], 0, 9)
####------------------------Quck sort wer 2

# def quick_sort(array, left, right)
#   i = left
#   j = right
#   x = array[(left + right) / 2]
#
#   loop do
#     while array[i] < x
#       i += 1
#     end
#
#     while array[j] > x
#       j -= 1
#     end
#
#     if i <= j
#       array[i], array[j] = array[j], array[i]
#       i += 1
#       j -= 1
#     end
#
#     break if i > j
#   end
#
#   quick_sort(array, left, j) if (left < j)
#   quick_sort(array, i, right) if (right > i)
#   array
# end
#-------------------------Moduły
# class MojaKlasa
#   include Enumurable
#   def initialize
#   end
# end
# #-----------------------Moduły
# class Player
#   include Comparable
#
#   attr_reader :score
#
#   def initialize(score)
#     @score = score
#   end
#
#   def <=>(other_player)
#     self.score <=> other_player.score
#   end
# end
#
# p1 = Player.new(100)
# p2 = Player.new(10)
#
# p1 < p2

#Zad----------- moduły-------------------------------------------------
# module DescribeMe
#   def describe
#     puts "My name is #{name}"
#   end
# end
#
# class Dog
#   include DescribeMe
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end
# class Cat < Dog
#   # include DescribeMe
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end
#
#
# Dog.new("Burek").describe #=> My name is Burek
# Cat.new("Kici").describe
#-----------------Projektowanie OPP
# class Product
#   attr_accessor :name, :price
#   def initialize(name, price)
#     self.name = name
#     self.price = price
#   end
# end
#
# class Shop
#   attr_accessor :name, :products_list
#   def initialize(name)
#     self.name = name
#     self.products_list = []
#   end
#
#   def add_product(product, quantity = 1)
#     quantity.times { products_list << product }
#   end
#
#   def take(product_name)
#     index = products_list.index { |product| product.name == product_name }
#     return products_list.delete_at(index) if index
#   end
# end
#
# class Client
#   attr_accessor :name, :money, :purchased_products, :to_buy_list
#   def initialize(name, money, to_buy_list)
#     self.name = name
#     self.money = money
#     self.purchased_products = []
#     self.to_buy_list = to_buy_list
#   end
#
#   def perform_shopping(shop)
#     everything_done = true
#     while product_name = to_buy_list.pop
#       product = shop.take(product_name)
#       next unless product
#       if product.price > money
#         shop.add_product(product)
#         everything_done = false
#       else
#         purchased_products << product
#         self.money -= product.price
#       end
#     end
#     everything_done
#   end
#
#   def please_buy(products)
#     products.each do |product|
#       to_buy_list << product
#     end
#   end
# end


# shop = Shop.new('Stonka')
# shop.add_product(Product.new('jogurt', 1.23), 4)
# shop.add_product(Product.new('szynka', 5.99), 8)
# janusz = Client.new('Janusz', 30,['chleb', 'jogurt', 'jogurt', 'szynka'])
# janusz.perform_shopping(shop)
# janusz = Client.new('Janusz', 30,['jogurt', 'jogurt', 'szynka', 'masło'])

puts "Hello word!"
class Dog
end

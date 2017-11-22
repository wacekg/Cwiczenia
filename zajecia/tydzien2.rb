# puts "Wpisz dwie liczby:"
# initial_term = gets.to_i
# difference = gets.to_i
#
# i = 1
# while i <= 10
#   puts initial_term + (i - 1) * difference
#   i += 1
# end

# require "pry"
#
# puts "Wpisz dwie liczby:"
# initial_term = gets.to_i
# difference = gets.to_i
#
# i = 1
# while i <= 10
#   binding.pry
#   puts initial_term + (i - 1) * difference
#   i += 1
# end

# puts "Wpisz wartość"
#
# value = gets.to_i
#
# result = if value % 2 == 0
#            #7
#            "Parzysta"
#          else
#            "Nieparzysta"
#          end
#
# puts result

# def abs(a, b)
#   difference=a-b
#   if a>=begin
#
#   rescue ExceptionName
#
#   end
# end

#----------------------------------------------------------------
# require "pry"
#
# [1, 3, 5, 86].inject do |accum, elem|
#   binding.pry
#   accum + elem
# end

#-----------------------------------------------------------------
# require "pry"
#
# def inject(accum, array)
#   i = 0
#
#   binding.pry    #zatrzymanie w pry
#
#   while i < arrau.lenght
#     yield(accum, array[i])
#     i+=1
#   end
#   accum
# end
#
# inject(0, [1, 2, 7]) { |accum. elem| accum + elem }

#----------------------------------------------
# def foldr(acc, array)
#   i=array.length-1
#   while i >= 0 do
#     acc = yield(acc, array[i])
#     i=i-1
#   end
#   puts acc
# end
# foldr(0, [3, 4, 65, 9]) { |acc, elem| elem - acc }

#----------------------------------------------------

# def szukaj(x, array)
# l=1
# p=array.length-1
#
#   until l>p
#     s=(l+p)/2
#     elem=array[s]
#
#     if elem<x
#       l=s+1
#     elsif elem>x
#       p=s-1
#     elsif
#       return s
#     else
#       puts "nie znaleziono"
#     end
#   end
# end
#
# puts szukaj(2, [-3, 2, 59])
# puts szukaj(-3, [-3, 2, 59])
# puts szukaj(-1, [-3, 2, 59])
# puts szukaj(10, [-3, 0, 10, 19, 34, 35, 101])

#--------------------------------------------------
# Napisz metodę word_count, która zlicza wystąpienia słów w podanym tekście i wypisuje, ile razy wystąpiło każde z nich
# word_count("cos cos wystapilo dwa razy")
# {"cos"=>2,"wystapilo"=>1,"dwa"=>1,"razy"=>1}
# require "pry"
#
# def word_count(text)
#   words = text.split(" ")
#   result = {}
#
#   words.each do |word|
#     if result[word]
#       result[word] += 1
#     else
#       result[word] = 1
#     end
#   end
#
#   result
# end
#
# puts word_count(gets)

#--------------------------------------------------------------
# burner1 = {
#   "size" => 2
# }
#
# burner2 = {
#   "size" => 5
# }
#
# gas_hub = {
#   "brand" => "Samsung",
#   "price" => 2300.0,
#   "burners" => [burner1, burner2]
# }
#
# # zwraca czas gotowania wody
# def boil_water(burner)
#   60 / burner["size"]
# end
#
# def make_promotional(gas_hub, percentage)
#   gas_hub["price"] = gas_hub["price"] * percentage
# end
#
# puts boil_water(gas_hub["burners"][0])
# puts boil_water(gas_hub["burners"][1])
#
# make_promotional(gas_hub, 0.5)
# puts gas_hub["price"]

#----------------------------------------------
# def objekt(x)
#   puts x.methods
#   #puts x.methods.size
# end
# objekt(5)

#----------------------------------------------
# class CoffeeMachine
#   def self.company_name
#     "Foo company"
#   end
#   def grind_grains
#     puts "Grinding grains"
#   end
#   def add_milk
#     puts "Dolane mleko"
#   end
#   def make_coffee
#     self.grind_grains
#     self.add_milk
#     puts "Making coffee"
#   end
# end
# coffee = CoffeeMachine.new
# coffee.make_coffee

#-------------------------------------------------------
# class Dog
#   def initialize(a,b)
#     @a=a
#     @b=b
#     puts "Tekst #{a} tekst2 #{b}"
#   end
# end
# Dog.new("xxx", "yyyy")

#-------------------------------------------------------
# class GasHub
#   def initialize(brand, price, burners)
#     @brand = brand
#     @price = price
#     @burners = burners
#   end
#
#   def make_promotional(percentage)
#     @price = @price * percentage
#   end
#
#   def burners
#     @burners
#   end
# end
#
# class Burner
#   def initialize(size)
#     @size = size
#   end
#
#   def boil_water
#     60 / @size
#   end
# end
#
# burner1 = Burner.new(2)
# burner2 = Burner.new(5)
#
# hub = GasHub.new("Samsung", 2300.0, [burner1, burner2])
#
# puts hub.burners[0].boil_water
#
# hub.make_promotional(0.5)
#-----------------------------------------------------
#require "pry"

# class ListElement
#   attr_reader :value, :next
#
#   def initialize(value)
#     @value = value
#     @next = nil
#   end
#
#   def add(element)
# #    binding.pry
#     element.add(@next) if @next
#     @next = element
#   end
# end
#
# l1 = ListElement.new("a") #-----------------element 1
# puts l1.value #=> 6
# puts l1.next #=> nil
# l2 = ListElement.new(6) #--------------------element 2
# l1.add(l2)
# puts l1.next.value #=> 6
# other = ListElement.new({}) #----------------element other
# l1.add(other)
# puts l1.next #=> other
# puts other.next #=> l2
# puts l1.next.next.value #=> 6

#---------------------------------------------
# klasa
# objektself
# attr_reader
# attr_writer
# metoda
# agument metodymetoda instancyjna
# metoda klasowa
#---------------------------------------------------------------
# class Dog
#   def put_down(item:, place:)
#     puts item
#     puts place
#   end
# end
# Dog.new.put_down(item: 'tekst1', place: 'tekst2')
#--------------------------------------------------------------
# c = Converter.new(base: "PLN", rates: { "USD" => 3.8, "EUR" => 4.3 })
# c.to_base(0.23, "EUR") #=> ok. 1.0
# c.to_currency(4.3, "EUR") #=> ok. 1.0

#---------------------Kantor
# class Converter
#   def initialize(base:, rates:)
#     @base  = base
#     @rates = rates
#   end
#
#   def to_base(amount, currency)
#     result = amount * @rates[currency]
#     puts "#{amount} #{currency} = #{result} #{@base}"
#   end
#
#   def to_currency(amount, currency)
#     result = amount / @rates[currency]
#     puts "#{amount} #{@base} = #{result} #{currency}"
#   end
# end
#
# c = Converter.new(base: "PLN", rates: { "USD" => 3.8, "EUR" => 4.3 })
# c.to_base(0.23, "EUR") #=> ok. 1.0
# c.to_currency(4.3, "EUR") #=> ok. 1.0

#----------------------------------------------------------
# class Bottle
#   def initialize
#     fill
#   end
#
#   def drink
#     @water -= 10 unless @water.zero?
#   end
#
#   private
#   def fill
#     @water = 100
#   end
# end
#
# b=Bottle.new
# b.drink
# b.fill
#
# #--------------------------------------------------
# class Food
#   def eat
#     puts "Munch, munch, very tasty"
#   end
# end
#
# class Orange < Food
#   def blend
#     puts "Blending..."
#   end
# end
#
# food=Food.new
# food.eat

# @---------------------------------------------------
# class Dog
#   def eat
# end
# class Cat
# end
# class Alligator
# end
#----------------------------------Super--
# class Speaker
#   def play(track_name)
#     puts "Playing: #{track_name}"
#   end
# end
#
# class BluetoothSpeaker < Speaker
#   def play(track_name)
#     puts "Streaming..."
#     super
#   end
# end
#
# class MusicBox < Speaker
#   def play
#     super("Locked Out Of Heaven")
#   end
# end
#
# MusicBox.new.play

#----------------------Cwiczenia moje
# class Figura
#   def obwod(a, b)
#     @o=2*#{a}+2*{b}
#   end
#   def pole(a, b)
#     @p=2*#{a}+2*{b}
#   end
# end
#
# class Kolo < Figura
#   def pole(r)
#     @p=3.14*#{r}**#{r}
#     puts "Pole koła: #{@p}"
#   end
#   def obwod(r)
#     @o=2*3.14*#{r}
#     puts "Pole kola: #{@o}"
#   end
# end
#
# class Prostokat < Figura
# end
#
# class Kwadrat < Figura
# end
#
# class Trapez < Figura
#   def pole(a, b, h)
#     @p=(#{a}+#{b}/2*#{h})
#   end
#   def obwod(a, b, h)
#   puts
#   end
# end

#------------------------------------------------------
class Figure
end

class Trapezoid < Figure
  def initialize(a, b, h)
    @a = a
    @b = b
    @h = h

    @c = c
  end

  def area
    ((@a + @b) * @h) / 2.0
  end

  def perimeter
    @a + @b + 2 * @c
  end

  private

  def c
    d = (@b - @a) / 2.0
    Math.sqrt(@h * @h + d * d)
  end
end

class Rectangle < Trapezoid
  def initialize(a, b)
    super(b, b, a)
  end
end

class Square < Rectangle
  def initialize(a)
    super(a, a)
  end
end

class Disk < Figure
  def initialize(r)
    @r = r
  end

  def area
    Math::PI * @r * @r
  end

  def perimeter
    2 * Math::Pi * @r
  end
end
# r=

#-------------------------------------------------
# class Dog
#   DEFAULT_NAME = "Burek"
#
#   attr_reader :name
#
#   def initialize(name: DEFAULT_NAME)
#     @name = name
#   end
# end
#
# Dog::DEFAULT_NAME # => "Burek"
#
# d = Dog.new
# puts d.name

#--------------------------STAŁE
# require "pry"
#
# class Dog
#   DEFAULT_NAME = "Burek".freeze # nie pozwala na modyfikację
#
#   attr_reader :name
#
#   def initialize(name: DEFAULT_NAME)
#     @name = name
#   end
# end
#
# binding.pry
# Dog::DEFAULT_NAME # :: <- dostaje sie do zagnieżdżonych stałych
#
# d = Dog.new
# puts d.name

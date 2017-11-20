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
    puts "Pole: #{((@a + @b) * @h) / 2.0}"
  end

  def perimeter
    puts "Obwód: #{@a + @b + 2 * @c}"
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
    puts "Pole koła: #{Math::PI * @r * @r}"
  end

  def perimeter
    # puts "Obwód okręgu: #{2 * Math::Pi * @r}"
    puts "Obwód okręgu: #{2 * 3.14 * @r}"
  end
end

trapezoid = Trapezoid.new(1, 2, 3)
puts "Trapez"
trapezoid.area
trapezoid.perimeter

rectangle = Rectangle.new(2, 3)
puts "Prostokąt"
rectangle.area
rectangle.perimeter

square = Square.new(2)
puts "Kwadrat"
square.area
square.perimeter

disk = Disk.new(3)
puts "Koło"
disk.area
disk.perimeter

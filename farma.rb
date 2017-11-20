class Farm
  # attr_accessor :animals
  def initialize (animals)
    @animals=animals
  end
  def give_sounds
    @animals.each do |elem|
      puts elem.give_sound
    end
  end
end
class Animal
  def give_sound
    puts "Wigilia 2017"
  end
end
class Dog < Animal
  def give_sound
    super
    puts "Pies: Hau, hau"
  end
end
class Cat < Animal
  def give_sound
    puts "Kot: Miau, miau"
  end
end
class Duck < Animal
  def give_sound
    puts "Kaczka: Kwa, kwa"
  end
end
class Goose < Animal
  def give_sound
    puts "Gęś: Gę, gę"
  end
end

dog=Dog.new
cat=Cat.new
duck=Duck.new
goose=Goose.new
animals=[dog, cat, duck, goose]
speech=Farm.new(animals)
speech.give_sounds

class SumArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def call
    sum=0
    array.each do |elem|
      sum = sum + elem
    end
    sum = sum - min - max
    puts sum
  end

  private

  def min
    min=array[0]
    array.each do |elem|
      if elem<min
        min=elem
      end
    end
    min
  end

  def max
    max=array[0]
    array.each do |elem|
      if elem>max
        max=elem
      end
    end
    max
  end
end

my_sum = SumArray.new([1,2,3])
my_sum.call

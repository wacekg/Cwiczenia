class Calculator
  attr_accessor :result
  attr_reader :name
  attr_writer :history
  def initialize (name)
    @result=0
    @history=[]
    @name=name
  end

  def add(x)
    @result+=x
    @history << "add #{x} (result: #{@result})"
  end

  def subtract(x)
    @result-=x
    @history << "subtract #{x} (result: #{@result})"
  end

  def multiply(x)
    @result*=x
    @history << "multiply #{x} (result: #{@result})"
  end

  def divide(x)
    if x == 0
      puts "BŁĄD NIE MOŻNA DZIELIĆ PRZEZ 0"
    else
      @result/=x
      @history << "divide #{x} (result: #{@result})"
    end
  end

  def clear
    @result=0
    @history << "clear (result to #{@result})"
  end

  def change_sign
    @result=-@result
    @history << "change_sign (result: #{@result})"
  end

  def print_history
    puts "prints entire history"
    puts @history
  end
end

calculator = Calculator.new("CASIO")
puts calculator.name # prints CASIO
calculator.add(2)
calculator.add(3)
puts calculator.result # prints 5
calculator.add(10)
puts calculator.result # prints 15
calculator.clear # set result to 0
puts calculator.result # prints 0
calculator.subtract(20)
puts calculator.result # prints -20
calculator.multiply(4)
puts calculator.result # prints -60
calculator.divide(0)
puts calculator.result # prints -15
calculator.change_sign
puts calculator.result # prints 15
calculator.print_history

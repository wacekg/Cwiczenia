class Converter
  def initialize(base:, rates:)
    @base  = base
    @rates = rates
  end

  def to_base(amount, currency)
    result = amount * @rates[currency]
    puts "#{amount} #{currency} = #{result} #{@base}"
  end

  def to_currency(amount, currency)
    result = amount / @rates[currency]
    puts "#{amount} #{@base} = #{result} #{currency}"
  end
end

c = Converter.new(base: "PLN", rates: { "USD" => 3.8, "EUR" => 4.3 })
c.to_base(1.88, "EUR")
c.to_currency(10.3, "EUR")
c.to_base(0.50, "USD")
c.to_currency(21.3, "USD")

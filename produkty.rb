#test zmian na Git
require 'csv'                           #biblioteka obsługi plików csv
require 'pry'
class Products
  def initialize
    @products = []
  end

  def products
     if @products == []
       CSV.foreach("products.csv", headers: true) do |row|  #pętla po pliku ?
         @products << parse_line(row)                       #zapis do tablicy wyniku metody parse_line
       end
     end
     @products                                              #metoda products zwraca tablicę @products której elementami są hashe ?
  end

  def find(name)                                            #metoda szukaj
    result = nil

    products.each do |row|                                  #pętla po tablicy
      if row[:name] == name
        result = "tekst #{row}"                             #jeżeli hash w tablicy == name zapisz teho hasha do result
      end
    end
    result
  end

  private

  def parse_line(row)                                     #metoda przyjmuje jako argument blok |row| który jest tablicą z lini 10 ?
    {                                                     #zapis hasha który jest objektem tablicy ?
      name: row["Product"],
      price: row["Price(zl)"],
      weight: row["Weight(kg)"]
    }
  end
end

products_container = Products.new
case ARGV[0]                                              # pętla po tablicy ARGV ["-f", "apple"] ARGV dzieli argument wywołania po spacji ?
when "-f"
  puts products_container.find(ARGV[1])
  puts products_container.products                        #mnie kolizja nazw przeraża ale Ruby sobie z tym radzi :) -> instancjaObiektu.metoda
end

conv=ARGV[1].to_f
CSV.open(ARGV[3], "wb") do |csv|
  csv << ["Product", "Price(#{ARGV[2]})", "Weight(kg)"]
    products_container.products.each do |elem|
      # binding.pry
      csv << ["#{elem[:name]}", "#{elem[:price].to_f/conv}", "#{elem[:weight]}"]
    end
  end

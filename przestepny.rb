class Year
  attr_reader :years
  # attr_writer :leap_years

  def initialize(years)
    @years=years                    #zapytać po co
    @leap_years=[]
  end

  def leap_years                   #metoda - pętla po latach zapisująca w tablicy lata przestępne
    years.each do |year|
      if leap_year?(year) == true
        @leap_years << year
      end
    end
    @leap_years
  end

  def leap_year? (year)              #metoda sprawdzająca rok przestępny
    year%4==0 && year%100!=0
  end

end

year=Year.new((2000..2017).to_a)
puts year.leap_years

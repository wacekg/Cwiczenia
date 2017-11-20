def to_roman (number)
  number1=0    #liczba dziesiątek, setek i tysięcy
  last=number  #reszta
  div=1000     #dzielnik
  conv=[]      #tablica liczb do konwersji
  i=0          #iteracja pętli dpoisującej znak rzymski np I, II, III
  roman=""     #string wynikowy
  roman_map = { 1 => "I",
               2 => "II",
               3 => "III",
               4 => "IV",
               5 => "V",
               6 => "VI",
               7 => "VII",
               8 => "VIII",
               9 => "IX",
               10 => "X",
               20 => "XX",
               30 => "XXX",
               40 => "XL",
               50 => "L",
               60 => "LX",
               70 => "LXX",
               80 => "LXXX",
               90 => "XC",
               100 => "C",
               200 => "CC",
               300 => "CCC",
               400 => "CD",
               500 => "D",
               600 => "DC",
               700 => "DCC",
               800 => "DCCC",
               900 => "CM",
               1000 => "M",
               2000 => "MM",
               3000 => "MMM", }
    while div >= 10
      number1=last/div*div
      last=number%div
      div=div/10
        if number1 >= 10
          conv << number1
        end
    end
    conv << last
    conv.each do |elem|
      roman << roman_map[elem]
    # end
    end
    puts "Liczba arabska: #{number}"
    puts "Liczba rzymska: #{roman}"
  end

to_roman(3372)

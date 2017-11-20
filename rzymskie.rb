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
      case elem
      when 3000
        roman << roman_map[3000]
      when 2000
        roman << roman_map[2000]
      when 1000
        roman << roman_map[1000]
      when 900
        roman << roman_map[900]
      when 800
        roman << roman_map[800]
      when 700
        roman << roman_map[700]
      when 600
        roman << roman_map[600]
      when 500
        roman << roman_map[500]
      when 400
        roman << roman_map[400]
      when 300
        roman << roman_map[300]
      when 200
        roman << roman_map[200]
      when 100
        roman << roman_map[100]
      when 90
        roman << roman_map[90]
      when 80
        roman << roman_map[80]
      when 70
        roman << roman_map[70]
      when 60
        roman << roman_map[60]
      when 50
        roman << roman_map[50]
      when 40
        roman << roman_map[40]
      when 30
        roman << roman_map[30]
      when 20
        roman << roman_map[20]
      when 10
        roman << roman_map[10]
      when 9
        roman << roman_map[9]
      when 8
        roman << roman_map[8]
      when 7
        roman << roman_map[7]
      when 6
        roman << roman_map[6]
      when 5
        roman << roman_map[5]
      when 4
        roman << roman_map[4]
      when 3
        roman << roman_map[3]
      when 2
        roman << roman_map[2]
      when 1
        roman << roman_map[1]
      end
    end
    puts "Liczba arabska: #{number}"
    puts "Liczba rzymska: #{roman}"
  end

to_roman(3372)

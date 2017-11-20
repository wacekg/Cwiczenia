# ------------------------------------Choinka
# def choinka(margin, start, stop) #definicja metody 3 zmienne
#   start.step(stop, 2) do |i|     #pętla krok o 2 do stop
#     print " " * margin           #wydruj spacji margines podstawy piętra 1 zmienna
#     print " " * ((stop - i)/2)   #wydruk spacji od marginesu do gwiazdki 2 zmienna
#     print "*" * (i)              #wydruk gwizdki 3 zmienna*i
#     print "\n"                   #wydruk końca lini
#   end                            #koniec pętli
# end                              #koniec definicji
#
# choinka(4, 1, 7)      # wywołanie metody rysowania piętra
# choinka(2, 3, 11)
# choinka(7, 1, 1)
#
#
# ----------------------------------Ciąg Fibonacciego
# def fib (n)         #definicja metody fib
#   a, b = 0, 1       #przypisanie warości a,b
#   c = 0             #przypisanie wartości c
#   n.times do        #pętla na liczbach n - zdefiniowany parametr metody fib
#     puts a          #wyswietl zmienną a
#     a, b = b, a + b #zmiana wartości parametrów a i b wg ciągu Fibonacciego
#   end               #koniec pętli
# end                 #koniec definicji metody
# fib(10)             #wywołanie metody z wartością 10
#
#
# --------------------------------Szukanie indeksu pętla
# def find_index(array, value)     #definicja metody
#   i=1                            #wartość początkowa i
#    while i < array.length do     #pętla po tablicy
#     if array[i] == value         #jeżeli i-element tablicy = param. value
#       puts i                     # wyświetl i
#     end                          #koniec if
#     i=i+1                        #zwiększ i
#   puts 'not found'               #wyswietl
# end                              #koniec pętli
# end
#
# find_index([1, 2, 3, 4, 5], 3)    #wywołanie metody z parametrami tablicy i liczby
# find_index([5, 8, 6, 2, 2, 10], 2)
# find_index([10, 20, 30], 100)
# find_index([], 0)

# --------------------------------Szukanie indeksu Array#index
# def find_index(array, value)     #definicja metody
#   indeks=array.index(value)
#     if array[indeks] == value
#       puts indeks
#     else
#       puts "not found"
#     end                           #koniec if
# end
#
# find_index([1, 2, 3, 4, 5], 3)    #wywołanie metody z parametrami tablicy i liczby
# find_index([5, 8, 6, 2, 2, 10], 2)
# find_index([10, 20, 30], 100)
# find_index([], 0)

#--------------------------------Tabliczka mnożenia
# def tbl max
#   y = 0
#   x1=0                  #zmienna pierwszych 2 wierszy
#   print "     "         #ustawienie kursora
#   max.times do          #rysuje 1 wiersz od 1 do max
#     x1=x1+1
#     print "#{x1}    "
#   end
#   print "\n"
#   print "   "
#   max.times do          #rysuje 1 wiersz od 1 do max
#     x1=x1+1
#     print "-----"
#   end
#   print "\n"
#   max.times do         #pętla wierszy
#     x=0
#     y=y+1
#     if  y < 10         #rysowanie pierwszych 2 kolumn
#       print "#{y}  | "
#     else print "#{y} | "
#     end
#       max.times do     #pętla kolumn
#         x=x+1
#         ilocz = y*x    #wynik tabliczki mnożenia
#           if ilocz<10
#             print "#{ilocz}    " #wydruk wyników jednocyfrowych
#           else
#             print "#{ilocz}   "  #wydruk wyników dwucyfrowych
#         end
#       end
#       print "\n" #wydruk końca lini po petli kolumn
#   end
# end
# tbl(10)

#-------------------------------Suma liczb 1 wersja
# def suma n
#   sum = 0
#   while n>0 do
#     if n%2==0
#       sum=sum+n #liczy sumę od tył
#     end
#     n=n-1
#   end
#   puts sum
# end
# suma(10)

#--------------------------------Suma liczb parzystych 4 wersja wg wzoru
# def suma n
#   min=2               #najmniejsza liczba parzysta
#   if n%2==0           #szukanie największej liczby parzystej
#     max=n
#   else
#     max=n-1
#   end
#   sum=(min+max)/2*max/2 #wzór na ciąg arytmetyczny
#   puts sum
# end
# suma(10)

#--------------------------------Suma liczb parzystych wersja Range#step
# def suma n
#   sum=0
#     (0..n).step(2) do |p| #pętla od 0 do n o krok 2, zapis do p
#       sum=sum+p
#     end
#   puts sum
# end
# suma(10)

#--------------------------------Suma liczb parzystych wersja Enumerable#sum
# def suma n
#   tablica=[]              #definicja pustej tablicy
#     (0..n).step(2) do |p| #pętla od 0 do n o krok 2, zapis do p
#       tablica.push(p)     #zapis do tablicy
#     end
#   puts tablica.sum        #wyświetlanie sumy tablicy
# end
# suma(10)

#-------------------------------FizzBuzz
# i=0
# while i<100 do
#   i=i+1
#   if i%3==0 && i%5==0
#     puts "FizzBuzz"
#   elsif i%3==0
#     puts "Fizz"
#   elsif i%5==0
#     puts "Buzz"
#   else
#     puts i
#   end
# end

#--------------------------------Zgadywanka
# liczba=rand(100)               #początkowa liczba losowa
# puts liczba                    #wyswietl liczbę losową
# puts "To jest twoja liczba ?"
# odp=gets.chomp                 #czeka na odpowiedź od użytkownika i obcina znak konca linii
#   while odp != "ok" do         #jesli ok to koniec pętli
#     if odp=="less"
#       liczba=rand(liczba)      #zmniejsza zakres liczby losowej
#     else odp=="less"
#       liczba=rand(100-liczba)+liczba   #zmniejsza zakres i dodaje wczesniej wylosowana liczbę
#     end
#     puts liczba                #wyswietla kolejna liczę losową
#     odp=gets.chomp             #kolejna odpowiedz od użyt. w pętli
#   end

#--------------------------------Foldr BŁĘDNY
# def foldr(acc, elem) #definicja metody foldr
#   i=elem.length      #i ma wartość ostatniego elementu tablicy elem
#   while i > 0 do     #pętla od końca do początku tablicy
#     yield acc        #wywołanie bloku
#     i=i-1            # iteracja pętli (do tył)
#   end
#   puts acc           #wyświetlenie akumulatora
# end
#
# foldr(0, [3, 4, 65, 9]) { |acc, elem| elem - acc }
# 55 # 3 - (4 - (65 - (9 - 0)))

#--------------------------------Foldr POPRAWNY
# def foldr(acc, array) #definicja metody foldr
#   i=array.length-1     #i ma wartość ostatniego elementu tablicy elem
#   while i >= 0 do     #pętla od końca do początku tablicy
#     acc = yield(acc, array[i])       #wywołanie bloku
#     i=i-1            # iteracja pętli (do tył)
#   end
#   puts acc          #wyświetlenie akumulatora
# end
# foldr(0, [3, 4, 65, 9]) { |acc, elem| elem - acc }

#-------------------------------Algorytm Euklidesa
# a=gets.chomp.to_i
# b=gets.chomp.to_i
#   while a!=b do
#     if a<b
#       b=b-a
#     else
#       a=a-b
#     end
#   end
#   puts "Największy wspólny dzielnik: #{a}"

#------------------------Kalkulator
# oper=0
# while oper !=5 do
#   puts "Wybierz operację:"
#   puts "1. Dodaj liczby"
#   puts "2. Odejmij liczby"
#   puts "3. Pomnóż liczby"
#   puts "4. Podziel liczby"
#   puts "5. Zamknij"
#   puts "Jaki jest Twój wybór ?:"
#   oper=gets.chomp.to_i
#     break if oper==5
#   puts "Wpisz pierwszą liczbę:"
#   a=gets.chomp.to_i
#   puts "Wpisz drugą liczbę"
#   b=gets.chomp.to_i
#     if oper==1
#       puts "Wynik: #{a+b}"
#       gets
#     elsif oper==2
#       puts "Wynik: #{a-b}"
#       gets
#     elsif oper==3
#       puts "Wynik: #{a*b}"
#       gets
#     elsif oper==4
#       puts "Wynik: #{a/b}"
#       gets
#     end
#
# end

#-----------------------PESEL
puts "Podaj nr PESEL"
pes=gets.chomp.to_s    #pesel jest stringiem
pesel=pes.split('')    #cyfry pesel są tablicą
pesel=pesel.map { |elem| elem.to_i  } #map konwertuje elementy tablicy na int i zapisuje w tablicy o tej samej nazwie
kontrola=9*pesel[0]+7*pesel[1]+3*pesel[2]+1*pesel[3]+9*pesel[4]+7*pesel[5]+3*pesel[6]+1*pesel[7]+9*pesel[8]+7*pesel[9]
kontrola=kontrola%10.to_i
sex=pesel[9]
  if pesel[2]<2
    wiek=19
  else
    wiek=20
  end
  if kontrola==pesel[10]
    puts "Pesel #{pes} jest prawidłowy"
    puts "Informacje o peselu:"
      if sex%2==0
        puts "- płeć: kobieta"
      else
        puts "- płeć: mężczyzna"
      end
    puts "- data urodzenia: #{pesel[4]}#{pesel[5]}-#{pesel[2]}#{pesel[3]}-#{wiek}#{pesel[0]}#{pesel[1]}"
  else
    puts "Pesel #{pes} jest NIEPRAWIDŁOWY"
  end

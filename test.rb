#Choinka
# def choinka(margin, start, stop) #definicja metody 3 zmienne
#   start.step(stop, 2) do |i|     #p�tla krok o 2 do stop
#     print " " * margin           #wydruj spacji margines podstawy pi�tra 1 zmienna
#     print " " * ((stop - i)/2)   #wydruk spacji od marginesu do gwiazdki 2 zmienna
#     print "*" * (i)              #wydruk gwizdki 3 zmienna*i
#     print "\n"                   #wydruk ko�ca lini
#   end                            #koniec p�tli
# end                              #koniec definicji
#
# choinka(4, 1, 7)      # wywo�anie metody rysowania pi�tra
# choinka(2, 3, 11)
# choinka(7, 1, 1)


#Ci�g Fibonacciego
#def fib (n)         #definicja metody fib
#  a, b = 0, 1       #przypisanie waro�ci a,b
#  c = 0             #przypisanie warto�ci c
#  n.times do        #p�tla na liczbach n - zdefiniowany parametr metody fib
#    puts a          #wyswietl zmienn� a
#    a, b = b, a + b #zmiana warto�ci parametr�w a i b wg ci�gu Fibonacciego
#  end               #koniec p�tli
#end                 #koniec definicji metody
#fib(10)             #wywo�anie metody z warto�ci� 10


#Szukanie indeksu
#def find_index(array, value)     #definicja metody
#  i=1                            #warto�� pocz�tkowa i
#  index_array=array.index(value) #nie wiem :(
#    if array[i] == value         #je�eli i-element tablicy = param. value
#      puts i                     # wy�wietl i
#      return                     #wyjdz z if
#    end                          #koniec if
#    i=i+1                        #zwi�ksz i
#  puts 'not found'               #wyswietl
#end

#find_index([1, 2, 3, 4, 5], 3)    #wywo�anie metody z parametrami tablicy i liczby
#find_index([5, 8, 6, 2, 2, 10], 2)
#find_index([10, 20, 30], 100)
#find_index([], 0)
def wyswietl(start, koniec)
  while start < koniec
    yield start
    start = start + 1
  end
end
wyswietl(7, 18) do |n|
  puts n if n % 2 == 1
end

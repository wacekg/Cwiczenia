# def greet(Wacek)
# puts "Hello there, #{Wacek}!"
# end
# a=1
# def funkcja(x)
#   wynik=4*x.to_i-10
#   puts wynik
# end
# funkcja(a)

# wartosc = gets
# def metoda(a)
#   puts a.to_s + 'czesc z mojej metody'
# end
# puts metoda(wartosc)

# def is_13?(number)
#   number == 13
# end
#   i = 0
# until is_13?(i)
#   puts "Jeszcze nie mam 13 yet!"
#   i = i + 1
# end

# a=[1, 5, 3, 4, 5]
# i=0
# loop do
#   break if i>a.length
#   puts a[i]**2
#   i=i+1
# end

# def newtab(array, newtab=0)
#   i = 0
#   while i < array.length
#     newtab<<yield(array[i])
#     i=i+1
#   end
#   newtab
# end
#
# tablica=[1, 2, 3]
#   puts (newtab(tablica) {|elem| elem*2})

x=1
def metoda
 puts yield
end
metoda {'fghgfgjffjf'}

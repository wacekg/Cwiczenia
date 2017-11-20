#------------------Sito Eratostenesa
puts "Podaj zakres (liczba początkowa)"
a = gets.to_i #przedział od
puts "Podaj zakres (liczba końcowa)"
b = gets.to_i #przedział do
# a=ARGV[0]
# b=ARGV[1]
if a==1 #najmniejszy dzielnik
  c=2
else
  c=a
end
tab=[c]
  (a..b).each do |a|#pierwsza pętla dla najmniejszego dzielnika
    if a%c!=0
      tab << a #zapis pierwszej tablicy
    end
end

i=0 #indeks pętli nadrzędnej
while i <= tab.length-1
  c=tab[i]
  j=i+1 #indeks pętli wewnętrznej
  while j <= tab.length-1
    d=tab[j]
    if d%c==0
      tab.delete_at(j)
    end
    j=j+1
  end
  i=i+1
  end
puts "Liczby pierwsze"
puts tab

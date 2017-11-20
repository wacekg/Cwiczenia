# puts "Podaj liczby oodzielone spacją"
# sort=gets.chomp.to_s
# tab=sort.split
# tab=tab.map { |elem| elem.to_i  }
tab=[74, 77, 64, 19, 43, 47, 77, 66, 47, 60, 7, 97, 71, 87, 95, 79]

#metoda sortowanie tablicy
def sort(tab1)
  n=1
  while n <= tab1.length-1
    a=0
    b=1
    while b <= tab1.length-1
      if tab1[b]<tab1[a]
        c=tab1[a]
        tab1[a]=tab1[b]
        tab1[b]=c
      end
      a=a+1
      b=b+1
    end
    n=n+1
  end
end

#podział tablicy wg środkowego elementu
dziel=(tab.length-1)/2
male=[]
duze=[]
tab.each do |elem|
  if elem<tab[dziel]
    male << elem
  else
    duze << elem
  end
end
tab=[] #zerowanie tablicy

sort (male)
tab << male
sort (duze)
tab << duze
puts tab

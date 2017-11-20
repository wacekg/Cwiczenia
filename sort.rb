puts "Podaj liczby oodzielone spacją"
sort=gets.chomp.to_s
tab=sort.split
tab=tab.map { |elem| elem.to_i  }
#tab=[74, 77, 64, 19, 43, 47, 77, 66, 47, 60, 7, 97, 71, 87, 95, 79]
a=0
b=1
while b <= tab.length-1
  if tab[a]<=tab[b]
    a=a+1
    b=b+1
  else
    c=tab[a]
    tab[a]=tab[b]
    tab[b]=c
    a=0
    b=1
  end
end
puts tab

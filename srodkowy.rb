def dlugosc (tekst)
  centr=tekst.length/2
    if tekst.length%2 ==0
      centr1=tekst[centr-1]
    end
  puts "Środkowe znaki #{centr1}#{tekst[centr]}"
end
dlugosc("tesTing1")

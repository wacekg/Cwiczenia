def samogloski (tekst)
  licz=0
  tekst=tekst.split('')
  tekst.each do |elem|
    if elem=='a' || elem=='e' || elem=='i' || elem=='o' || elem=='u' || elem=='y'
      puts elem
      licz=licz+1
    end
  end
  puts licz
end
samogloski("wacek gajda ioue")

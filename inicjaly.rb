def initials (name)
  name=name.split
  inicjaly="Inicjały: ".to_s
    name.each do |elem|
      inicjaly << elem[0].upcase
    end
  puts inicjaly
end
initials("jan krzysztof imie nazwisko")

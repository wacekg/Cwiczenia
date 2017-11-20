def highest_number(number)
  number=number.to_s.split('')
  max=[]   #tablica a następnie string wynikowy
  empty=[] #pomocnicza tablica do pętli
  while number!=empty do
    a=0
    number.each_with_index do |elem1, index1|
      elem1=elem1.to_i
      if elem1>a
        a=elem1
      end
    end
    max << a
    number.delete(a.to_s)
  end
  max=max.join.to_i
  puts max
end
highest_number(156423)

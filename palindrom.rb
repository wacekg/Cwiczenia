def palindrom (text)
  text=text.downcase
  text=text.split('')
    text.each do |elem|             #obcinanie spacji
      if elem==" "
        text.delete(elem)
      end
    end

  text1=[]
  a=text.length-1
    while a>=0
      text1 << text[a]            #zapis do nowej tablicy od tył
      a-=1
    end
    if text==text1
      true
    else
      false
    end
end
palindrom('Kobyła ma mały bok')

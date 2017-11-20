require "pry"
x=["A","B","C","D","E","F","G","H","I","J"]   #zakres matrycy
board={}                            #matryca pola
a=0
  x.each do |elem|
    (0..9).each do |elem1|
      board[a]="#{elem}#{elem1}"
      a+=1
    end
    # binding.pry
  end
puts board
n=4

def filed_rand                      #losowanie pola okrętu
  field = rand(100)
  level=rand(2)                     #orientacja okrętu (pion, poziom)
end

def check(size)                    #sprawdzanie dostępnych pół
  filed1 = filed
  (1..size) do
    if board == {}
      break
    elsif board.include?(field1) && level=0
      filed1 += 1
    elsif board.include?(field1) && level=1
      filed1 += 10
    else
      filed_rand
  end
end

def ship                         #wyznaczanie pola okrętu
  (1..size) do
    if level==0 && check == true
      okret << field
      board_del.push (field-11, filed-10, filed-9, field-1, filed, filed+1, field+9, filed+10, filed+11) #tablica pól do usunięcia z hasha
      field+=1
    elsif level==1 && check == true
      okret << field
      board_del.push (field-11, filed-10, filed-9, field-1, filed, filed+1, field+9, filed+10, filed+11) #tablica pól do usunięcia z hasha
      field+=10
    else
      break
    end
  end
end

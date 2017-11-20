require "pry"
def backspace(text)
  text=text.split('')
  a=1
  b=0
  if text[b] == "#"           #kasowanie jeśli # jest pierwszy
    text.delete_at(b)
  end
  while a<=text.length-1
    # binding.pry
    if text[a] == "#"
      text.delete_at(a)
      text.delete_at(b)
      a-=1
      b-=1
    else
      a+=1
      b+=1
    end
  end
  puts text
end
backspace("#abc#d##c")

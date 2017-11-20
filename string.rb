def accum (text)
  text=text.split('')
  text1=""
  n=0
    text.each do |elem|
      if n>0
        text1 << "-"
      end
      elem1="".to_s
      text1 << elem[0].upcase
        (1..n).each do |n|
          elem1 << elem[0].downcase
        end
        n=n+1
      text1 << elem1
    end
    puts text1
end
accum("RqaEzty")

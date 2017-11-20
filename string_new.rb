def accum (text)
  text=text.split('')  #tablica początkowa
  text1=[]             #tablica wynikowa konwertowana na końcy w string
    text.each_with_index do |elem, index|
      elem1="".to_s
      elem1 << elem[0].upcase
        (1..index).each do |index|
          elem1 << elem[0].downcase
        end
      text1 << elem1
    end
    text1=text1.join('-')
    puts text1
end
accum("RqaEzty")

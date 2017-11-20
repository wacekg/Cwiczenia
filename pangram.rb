def pangram? (text)
  pl="abcćdeęfghijklłmnńoóprsśtuwyzżź"
  text=text.downcase
  pangram=true
  text=text.split('')
  pl=pl.split('')
    pl.each_with_index do |elem, index|
      if text.include?(elem)==false
        pangram=false
      end
    end
    puts pangram
end
pangram?("Dość błazeństw, żrą mój pęk luźnych fig")
# pangram?("Losowy ciąg znaków")

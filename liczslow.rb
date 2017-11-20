def word_count(word)
  word=word.downcase
  word=word.split(' ')        #tablica słów
  count_word={word[0] => 0}   #hash początkowy pierwszego słowa
    word.each do |elem|
      if count_word.include?("#{elem}")
        count_word["#{elem}"] = (count_word["#{elem}"])+1
      else
        count_word["#{elem}"] = 1
      end
    end
    puts count_word
end
word_count('foo Foo bar bar Bar tekst tekst1 tekst itd.')

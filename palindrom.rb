def palindrom (text)
  text=text.downcase.delete " "
  text == text.reverse
end
puts palindrom('Kobyła ma mały bok')
